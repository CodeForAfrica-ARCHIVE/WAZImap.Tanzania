from collections import OrderedDict

from wazimap.geo import geo_data
from wazimap.data.tables import get_model_from_fields
from wazimap.data.utils import get_session, calculate_median, merge_dicts, get_stat_data, get_objects_by_geo, group_remainder


# ensure tables are loaded
import wazimap_tz.tables  # noqa


PROFILE_SECTIONS = (
    'demographics',
    #'education',
    #'employment',
    #'households',
    'literacy',
    'attendance',
    'pepfar',
    #'pupil_teacher_ratios',
    #'school_amenities',
)

EMPLOYMENT_RECODES = OrderedDict([
    ('seeking work / no work available', 'Seeking work'),
    ('employed', 'Employed'),
    ('economically inactive', 'Not economically active'),
    ('employment unclassified', 'Unspecified')])

WATER_SOURCE_RECODES = OrderedDict([
    ('piped', 'Piped'),
    ('piped into dwelling', 'Piped'),
    ('stream', 'Stream'),
    ('spring/well/borehole', 'Spring, well or borehole'),
    ('lake', 'Lake, pond or dam'),
    ('pond/dam', 'Lake, pond or dam'),
    ('jabia/rain/harvested', 'Rain/jabia'),
    ('water vendor', 'Vendor'),
    ('other', 'Other'),
])


def get_census_profile(geo_code, geo_level, profile_name=None):
    session = get_session()
    try:
        geo_summary_levels = geo_data.get_summary_geo_info(geo_code, geo_level)
        data = {}

        for section in PROFILE_SECTIONS:
            function_name = 'get_%s_profile' % section
            if function_name in globals():
                func = globals()[function_name]
                data[section] = func(geo_code, geo_level, session)

                # get profiles for province and/or country
                for level, code in geo_summary_levels:
                    # merge summary profile into current geo profile
                    merge_dicts(data[section], func(code, level, session), level)

        # tweaks to make the data nicer
        # show X largest groups on their own and group the rest as 'Other'
        #group_remainder(data['households']['roofing_material_distribution'], 5)
        #group_remainder(data['households']['wall_material_distribution'], 5)

        return data

    finally:
        session.close()


def get_demographics_profile(geo_code, geo_level, session):
    # sex
    sex_dist_data, total_pop = get_stat_data(
        'sex', geo_level, geo_code, session,
        table_fields=['age in completed years', 'sex', 'rural or urban'])

    # urban/rural by sex
    urban_dist_data, _ = get_stat_data(
        ['rural or urban', 'sex'], geo_level, geo_code, session,
        table_fields=['age in completed years', 'sex', 'rural or urban'])
    total_urbanised = 0
    for data in urban_dist_data['Urban'].itervalues():
        if 'numerators' in data:
            total_urbanised += data['numerators']['this']

    # median age
    db_model_age = get_model_from_fields(['age in completed years', 'sex', 'rural or urban'], geo_level)
    objects = get_objects_by_geo(db_model_age, geo_code, geo_level, session, ['age in completed years'])
    objects = sorted((o for o in objects if getattr(o, 'age in completed years') != 'unspecified'),
                     key=lambda x: int(getattr(x, 'age in completed years').replace('+', '')))
    median = calculate_median(objects, 'age in completed years')

    # age in 10 year groups
    def age_recode(f, x):
        age = int(x.replace('+', ''))
        if age >= 80:
            return '80+'
        bucket = 10 * (age / 10)
        return '%d-%d' % (bucket, bucket + 9)

    age_dist_data, _ = get_stat_data(
        'age in completed years', geo_level, geo_code, session,
        table_fields=['age in completed years', 'sex', 'rural or urban'],
        recode=age_recode, exclude=['unspecified'])

    # age category
    def age_cat_recode(f, x):
        age = int(x.replace('+', ''))
        if age < 18:
            return 'Under 18'
        elif age >= 65:
            return '65 and over'
        else:
            return '18 to 64'

    age_cats, _ = get_stat_data(
        'age in completed years', geo_level, geo_code, session,
        table_fields=['age in completed years', 'sex', 'rural or urban'],
        recode=age_cat_recode,
        exclude=['unspecified'])

    final_data = {
        'sex_ratio': sex_dist_data,
        'urban_distribution': urban_dist_data,
        'urbanised': {
            'name': 'In urban areas',
            'numerators': {'this': total_urbanised},
            'values': {'this': round(total_urbanised / total_pop * 100, 2)}
        },
        'age_group_distribution': age_dist_data,
        'age_category_distribution': age_cats,
        'median_age': {
            "name": "Median age",
            "values": {"this": median},
        },
        'total_population': {
            "name": "People",
            "values": {"this": total_pop}
        }}

    return final_data


def get_education_profile(geo_code, geo_level, session):
    # highest level reached
    edu_dist_data, total_pop = get_stat_data(
        'highest education level reached', geo_level, geo_code, session,
        key_order=['None', 'Pre-primary', 'Primary', 'Secondary', 'Tertiary',
                   'University', 'Youth polytechnic', 'Basic literacy', 'Madrassa'])

    secondary_or_higher = 0
    for key, data in edu_dist_data.iteritems():
        if key in ['Secondary', 'Tertiary', 'University', 'Youth polytechnic']:
            secondary_or_higher += data['numerators']['this']

    # school attendance by sex
    school_attendance_dist, _ = get_stat_data(
        ['school attendance', 'sex'], geo_level, geo_code, session,
        key_order={'school attendance': ['Never attended', 'At school', 'Left school', 'Unspecified'],
                   'sex': ['Female', 'Male']})

    total_never = 0.0
    for data in school_attendance_dist['Never attended'].itervalues():
        if 'numerators' in data:
            total_never += data['numerators']['this']

    return {
        'education_reached_distribution': edu_dist_data,
        'education_reached_secondary_or_higher': {
            'name': 'Reached Secondary school or higher',
            'numerators': {'this': secondary_or_higher},
            'values': {'this': round(secondary_or_higher / total_pop * 100, 2)}
        },
        'school_attendance_distribution': school_attendance_dist,
        'school_attendance_never': {
            'name': 'Never attended school',
            'numerators': {'this': total_never},
            'values': {'this': round(total_never / total_pop * 100, 2)}
        },
    }


def get_employment_profile(geo_code, geo_level, session):
    # employment status
    employment_activity_dist, total_workers = get_stat_data(
        ['employment activity status', 'sex'], geo_level, geo_code, session,
        recode={'employment activity status': dict(EMPLOYMENT_RECODES)},
        key_order={'employment activity status': EMPLOYMENT_RECODES.values(),
                   'sex': ['Female', 'Male']})

    total_employed = 0.0
    for data in employment_activity_dist['Employed'].itervalues():
        if 'numerators' in data:
            total_employed += data['numerators']['this']

    return {
        'activity_status_distribution': employment_activity_dist,
        'employed': {
            'name': 'Employment',
            'numerators': {'this': total_employed},
            'values': {'this': round(total_employed / total_workers * 100, 2)},
        },
    }


def get_households_profile(geo_code, geo_level, session):
    # main source of water
    water_source_dist, total_households = get_stat_data(
        'main source of water', geo_level, geo_code, session,
        recode=dict(WATER_SOURCE_RECODES),
        key_order=WATER_SOURCE_RECODES.values())
    total_piped = water_source_dist['Piped']['numerators']['this']

    # main mode of waste disposal
    waste_disposal_dist, _ = get_stat_data(
        'main mode of human waste disposal', geo_level, geo_code, session,
        key_order=['Main sewer', 'Septic tank', 'Cess pool', 'Bucket', 'Bush', 'Other'])

    total_sewer_or_septic = 0.0
    for key in ['Main sewer', 'Septic tank']:
        if key in waste_disposal_dist:
            total_sewer_or_septic += waste_disposal_dist[key]['numerators']['this']

    # lighting
    lighting_dist, _ = get_stat_data(
        'main type of lighting fuel', geo_level, geo_code, session,
        key_order=['Electricity', 'Solar', 'Gas lamps', 'Pressure lamps', 'Tin lamps', 'Lanterns', 'Wood', 'Other'])
    total_electricity = lighting_dist['Electricity']['numerators']['this']

    # construction materials
    roofing_dist, _ = get_stat_data(
        'main type of roofing material', geo_level, geo_code, session,
        order_by='-total')

    wall_dist, _ = get_stat_data(
        'main type of wall material', geo_level, geo_code, session,
        order_by='-total')

    floor_dist, _ = get_stat_data(
        'main type of floor material', geo_level, geo_code, session,
        order_by='-total')

    return {
        'total_households': {
            'name': 'Households',
            'values': {'this': total_households},
        },
        'water_source_distribution': water_source_dist,
        'piped_water': {
            'name': 'Have piped water',
            'numerators': {'this': total_piped},
            'values': {'this': round(total_piped / total_households * 100, 2)},
        },
        'waste_disposal_distribution': waste_disposal_dist,
        'sewer_or_septic': {
            'name': 'Have a sewer or septic tank',
            'numerators': {'this': total_sewer_or_septic},
            'values': {'this': round(total_sewer_or_septic / total_households * 100, 2)},
        },
        'lighting_distribution': lighting_dist,
        'lighting_electricity': {
            'name': 'Use electricity for lighting',
            'numerators': {'this': total_electricity},
            'values': {'this': round(total_electricity / total_households * 100, 2)},
        },
        'roofing_material_distribution': roofing_dist,
        'floor_material_distribution': floor_dist,
        'wall_material_distribution': wall_dist,
    }

def get_literacy_profile(geo_code, geo_level, session):
    # literacy tests stats
    literacy_data, _ = get_stat_data(
        'literacy test', geo_level, geo_code, session)

    all_subjects = literacy_data['All subjects']['numerators']['this']

    english_test_dist = literacy_data['English']['numerators']['this']
    english_test_dist = {
        'Failed': {
            'name': 'Not competent',
            'numerators': {'this': 100 - english_test_dist},
            'values': {'this': 100 - round(english_test_dist, 2)},
        },
        'Passed': {
            'name': 'Competent in English',
            'numerators': {'this': english_test_dist},
            'values': {'this': round(english_test_dist, 2)},
        }
    }

    swahili_test_dist = literacy_data['Swahili']['numerators']['this']
    swahili_test_dist = {
        'Failed': {
            'name': 'Not competent',
            'numerators': {'this': 100 - swahili_test_dist},
            'values': {'this': 100 - round(swahili_test_dist, 2)},
        },
        'Passed': {
            'name': 'Competent in Swahili',
            'numerators': {'this': swahili_test_dist},
            'values': {'this': round(swahili_test_dist, 2)},
        },
    }

    numeracy_test_dist = literacy_data['Math']['numerators']['this']
    numeracy_test_dist = {
        'Failed': {
            'name': 'Not competent',
            'numerators': {'this': 100 - numeracy_test_dist},
            'values': {'this': 100 - round(numeracy_test_dist, 2)},
        },
        'Passed': {
            'name': 'Competence in Math',
            'numerators': {'this': numeracy_test_dist},
            'values': {'this': round(numeracy_test_dist, 2)},
        }
    }

    return  {
        'literacy_data': literacy_data,
        'english_test_dist': english_test_dist,
        'swahili_test_dist': swahili_test_dist,
        'numeracy_test_dist': numeracy_test_dist,
        'all_subjects_dist': {
            'name': 'Competent in all subjects',
            'numerators': {'this': all_subjects},
            'values': {'this': round(all_subjects, 2)}
        }
    }

def get_attendance_profile(geo_code, geo_level, session):
    # attendance stats
    attendance_data, _ = get_stat_data(
        'school attendance', geo_level, geo_code, session)

    dropped_out_dist = \
        attendance_data['Pupils in school']['numerators']['this']
    dropped_out_dist = {
        'Dropped out': {
            'name': 'Pupils in school',
            'numerators': {'this': dropped_out_dist},
            'values': {'this': round(dropped_out_dist, 2)},
        },
        'In school': {
            'name': ' Not in school',
            'numerators': {'this': 100 - dropped_out_dist},
            'values': {'this': 100 - round(dropped_out_dist, 2)},
        }
    }

    out_of_school_dist = attendance_data['Drop outs']['numerators']['this']
    out_of_school_dist = {
        'Out of school': {
            'name': 'Dropped out',
            'numerators': {'this': out_of_school_dist},
            'values': {'this': round(out_of_school_dist, 2)},
        },
        'In school': {
            'name': 'In school',
            'numerators': {'this': 100 - out_of_school_dist},
            'values': {'this': 100 - round(out_of_school_dist, 2)},
        }
    }
    return  {
        'attendance_data': attendance_data,
        'dropped_out_dist': dropped_out_dist,
        'out_of_school_dist': out_of_school_dist,
    }

def get_pupil_teacher_ratios_profile(geo_code, geo_level, session):
    # pupil teacher ratios
    ratio_data, _ = get_stat_data(
        'pupil teacher ratios', geo_level, geo_code, session)

    pupil_teacher_ratio = ratio_data['Pupil teacher ratio']['numerators']['this']
    pupils_per_textbook = ratio_data['Pupils per textbook']['numerators']['this']

    pupil_attendance_rate_dist = \
        ratio_data['Government school attendance rate']['numerators']['this']
    pupil_attendance_rate_dist = get_dictionary("Attending school", "Absent", pupil_attendance_rate_dist)

    teachers_absent_dist = ratio_data['Teachers absent']['numerators']['this']
    teachers_absent_dist = get_dictionary("Teachers absent", "Teachers present", teachers_absent_dist)

    return  {
        'pupil_attendance_rate_dist': pupil_attendance_rate_dist,
        'teachers_absent_dist': teachers_absent_dist,
        'pupil_teacher_ratio': {
            'name': 'For every one teacher there are ' +  str(pupil_teacher_ratio) + " pupils",
            'numerators': {'this': pupil_teacher_ratio},
            'values': {'this': pupil_teacher_ratio}
        },
        'pupils_per_textbook': {
            'name': 'Pupils per textbook',
            'numerators': {'this': pupils_per_textbook},
            'values': {'this': pupils_per_textbook}
        }
    }

def get_school_amenities_profile(geo_code, geo_level, session):
    # school amenities
    data, _ = get_stat_data('school amenity', geo_level, geo_code, session)

    library_data = data['Library']['numerators']['this']
    library_data = get_dictionary("Have a library", "Don't", library_data)

    drinking_water_data = data['Drinking water']['numerators']['this']
    drinking_water_data = get_dictionary("Have clean drinking water", "Don't", drinking_water_data)

    feeding_program_data = data['Feeding program']['numerators']['this']
    feeding_program_data = get_dictionary("Have a feeding program", "Don't", feeding_program_data)

    return  {
        'library_data': library_data,
        'drinking_water_data': drinking_water_data,
        'feeding_program_data': feeding_program_data,

    }

#PEPFAR DATA
def get_pepfar_profile(geo_code, geo_level, session):
    # PEPFAR stats
    pepfar_data, _ = get_stat_data("pepfar", geo_level, geo_code, session)
    HTC_TST = pepfar_data['HTC_TST']['numerators']['this']
    PMTCT_STAT = pepfar_data['PMTCT_STAT']['values']['this']
    PMTCT_STAT_POS = pepfar_data['PMTCT_STAT_POS']['numerators']['this']
    PMTCT_ARV = pepfar_data['PMTCT_ARV']['numerators']['this']
    PMTCT_EID = pepfar_data['PMTCT_EID']['numerators']['this']
    PMTCT_EID_POS = pepfar_data['PMTCT_EID_POS']['numerators']['this']
    PMTCT_CTX = pepfar_data['PMTCT_CTX']['numerators']['this']
    CARE_NEW = pepfar_data['CARE_NEW']['numerators']['this']
    TX_NEW = pepfar_data['TX_NEW']['numerators']['this']
    CARE_CURR = pepfar_data['CARE_CURR']['numerators']['this']
    TB_SCREEN = pepfar_data['TB_SCREEN']['numerators']['this']
    TX_CURR = pepfar_data['TX_CURR']['numerators']['this']
    TB_ART = pepfar_data['TB_ART']['numerators']['this']
    TX_RET_NUM = pepfar_data['TX_RET_NUM']['numerators']['this']
    TX_RET_DEN = pepfar_data['TX_RET_DEN']['numerators']['this']
    VMMC_CIRC = pepfar_data['VMMC_CIRC']['numerators']['this']
    OVC_SERV = pepfar_data['OVC_SERV']['numerators']['this']
    PP_PREV = pepfar_data['PP_PREV']['numerators']['this']
    KP_PREV = pepfar_data['KP_PREV']['numerators']['this']
    return {
        'HTC_TST': {
            'name': 'Number of individuals who received HIV Testing and Counseling (HTC) services for HIV and their\
                        test results',
            'numerators': {'this': HTC_TST},
            'values': {'this': HTC_TST}
        },
        'PMTCT_STAT': get_dictionary('Know status', "Don't" , PMTCT_STAT),
        'PMTCT_STAT_POS': {
            'name': 'Number of pregnant women with positive HIV status',
            'numerators': {'this': PMTCT_STAT_POS},
            'values': {'this': PMTCT_STAT_POS}
        },
        'PMTCT_ARV': {
            'name': 'Number of HIV-positive pregnant women who received antiretroviral medications to\
                        reduce risk of mother-to-child-transmission (MTCT) during pregnancy and delivery',
            'numerators': {'this': PMTCT_ARV},
            'values': {'this': PMTCT_ARV}
        },
        'PMTCT_EID': {
            'name': 'Number of infants born to HIV-positive women who had a virologic HIV test done within two months\
             of birth',
            'numerators': {'this': PMTCT_EID},
            'values': {'this': PMTCT_EID}
        },
        'PMTCT_EID_POS': {
            'name': 'Number of infants born to HIV-positive women who had a virologic HIV test done within two months\
                    of birth who tested positive for HIV',
            'numerators': {'this': PMTCT_EID_POS},
            'values': {'this': PMTCT_EID_POS}
        },
        'PMTCT_CTX': {
            'name': 'Number of infants born to HIV-positive pregnant women who began Cotrimoxazole (CTX) prophylaxis \
                        within two months of birth',
            'numerators': {'this': PMTCT_CTX},
            'values': {'this': PMTCT_CTX}
        },
        'CARE_NEW': {
            'name': 'Number of HIV-positive adults and children newly enrolled in clinical care during the\
                    reporting period who received at least one of the following at enrollment: clinical assessment (WHO\
                    staging) OR CD4 count',
            'numerators': {'this': CARE_NEW},
            'values': {'this': CARE_NEW}
        },
        'TX_NEW': {
            'name': ' Number of adults and children newly enrolled on antiretroviral therapy (ART)',
            'numerators': {'this': TX_NEW},
            'values': {'this': TX_NEW}
        },
        'CARE_CURR': {
            'name': 'Number of HIV-positive adults and children who received at least one of the following\
                    during the reporting period: clinical assessment (WHO staging) OR CD4 count OR viral load',
            'numerators': {'this': CARE_CURR},
            'values': {'this': CARE_CURR}
        },
        'TB_SCREEN': {
            'name': 'Number of PLHIV in HIV clinical care who were screened for TB symptoms at the last clinical\
                    visit',
            'numerators': {'this': TB_SCREEN},
            'values': {'this': TB_SCREEN}
        },
        'TX_CURR': {
            'name': ' Number of adults and children currently receiving ART',
            'numerators': {'this': TX_CURR},
            'values': {'this': TX_CURR}
        },
        'TB_ART': {
            'name': 'Number of HIV-positive new and relapsed registered TB cases on ART during TB treatment',
            'numerators': {'this': TB_ART},
            'values': {'this': TB_ART}
        },
        'TX_RET_NUM': {
            'name': 'Number of adults and children known to be alive and on treatment 12 months after\
                    initiation of antiretroviral therapy',
            'numerators': {'this': TX_RET_NUM},
            'values': {'this': TX_RET_NUM}
        },
        'TX_RET_DEN': {
            'name': 'Number of adults and children initiated on antiretroviral therapy treatment within the last\
                    12 months. This variable is the denominator of TX_RET_NUM and should be used to calculate retention\
                    in HIV treatment programs for those who initiated ART 12 months ago. ',
            'numerators': {'this': TX_RET_DEN},
            'values': {'this': TX_RET_DEN}
        },
        'VMMC_CIRC': {
            'name': 'Number of males circumcised as part of the voluntary medical male circumcision (VMMC)\
                    for HIV prevention program within the reporting period',
            'numerators': {'this': VMMC_CIRC},
            'values': {'this': VMMC_CIRC}
        },
        'OVC_SERV': {
            'name': 'Number of active beneficiaries served by PEPFAR OVC programs for children and families\
                    affected by HIV/AIDS',
            'numerators': {'this': OVC_SERV},
            'values': {'this': OVC_SERV}
        },
        'PP_PREV': {
            'name': 'Number of individuals from priority populations who completed a standardized HIV\
                    prevention intervention, including the specified minimum components, during the reporting period',
            'numerators': {'this': PP_PREV},
            'values': {'this': PP_PREV}
        },
        'KP_PREV': {
            'name': ' Number of key populations reached with individual and/or small group level HIV preventive\
                    interventions that are based on evidence and/or meet the minimum standards required',
            'numerators': {'this': KP_PREV},
            'values': {'this': KP_PREV}
        },
    }

def get_dictionary(key_one, key_two, val):
    #return a dictionary with the second dictionary being 100 - val
    return {
        key_one: {
            'name': key_one,
            'numerators': {'this': val},
            'values': {'this': round(val, 2)},
        },
        key_two: {
            'name': key_two,
            'numerators': {'this': 100 - val},
            'values': {'this': 100 - round(val, 2)},
        }
    }