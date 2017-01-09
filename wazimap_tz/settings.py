import os
from collections import OrderedDict
import dj_database_url

# pull in the default wazimap settings
from wazimap.settings import *  # noqa


# insert our overrides before both census and wazimap
INSTALLED_APPS = ['wazimap_tz'] + INSTALLED_APPS

DATABASE_URL = os.environ.get('DATABASE_URL', 'postgresql://wazimap:wazimap@localhost/wazimap_tz')
DATABASES['default'] = dj_database_url.parse(DATABASE_URL)
DATABASES['default']['ATOMIC_REQUESTS'] = True


# Localise this instance of Wazimap
WAZIMAP['name'] = 'Wazimap Tanzania'
WAZIMAP['url'] = 'https://tanzania.wazimap.org'
WAZIMAP['country_code'] = 'TZ'
WAZIMAP['country_name'] = 'Tanzania'
WAZIMAP['profile_builder'] = 'wazimap_tz.profiles.get_census_profile'
WAZIMAP['levels'] = {
    'country': {
        'plural': 'countries',
        'children': ['region','district','ward'],
    },
    'region': {
        'plural': 'regions',
        'children': ['district','ward'],
    },
    'district': {
        'plural': 'districts',
        'children': ['ward'],
    },
    'ward': {
        'plural': 'wards'
    }
}
WAZIMAP['comparative_levels'] = ['ward']
WAZIMAP['geometry_data'] = {
    'country': 'geo/country.topojson',
    'region': 'geo/region.topojson',
    'district': 'geo/district.topojson',
    'ward': 'geo/ward.topojson',
}

WAZIMAP['ga_tracking_id'] = 'UA-44795600-8'
WAZIMAP['twitter'] = '@Code4Africa'

WAZIMAP['map_centre'] = [-6.1523563,35.6754813]
WAZIMAP['map_zoom'] = 6

WAZIMAP['topics'] = OrderedDict()

WAZIMAP['topics']['census'] = {
    'topic': 'census',
    'name': 'census',
    'icon': 'fa-users',
    'order': 1,
    'desc': 'Census data collected in 2009',
    'profiles': [
        'Demographics'
    ]
}

WAZIMAP['topics']['health'] = {
    'topic': 'health',
    'name': 'health',
    'icon': 'fa-medkit',
    'order': 2,
    'desc': 'Health data',
    'profiles': [
        'pepfar',
        'causes of death',
        'family planning clients',
        'place of delivery',
        'health workers'
    ]
}


WAZIMAP['topics']['education'] = {
    'topic': 'education',
    'name': 'education',
    'icon': 'fa-graduation-cap',
    'order': 2,
    'desc': 'Education data from Twaweza',
    'profiles': [
        'literacy',
        'attendance',
    ]
}