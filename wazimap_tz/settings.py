import os

import dj_database_url

# pull in the default wazimap settings
from wazimap.settings import *  # noqa


# insert our overrides before both census and wazimap
INSTALLED_APPS = ['wazimap_tz'] + INSTALLED_APPS


DATABASE_URL = os.environ.get('DATABASE_URL', 'postgresql://wazimap_tz:824gYnKqil4NigNAUanVaP@wazimap.cfgmtx8ishfx.eu-west-1.rds.amazonaws.com/wazimap_tz')
DATABASES['default'] = dj_database_url.parse(DATABASE_URL)
DATABASES['default']['ATOMIC_REQUESTS'] = True


# Localise this instance of Wazimap
WAZIMAP['name'] = 'Wazimap Tanzania'
WAZIMAP['url'] = 'https://tanzania.wazimap.org'
WAZIMAP['country_code'] = 'TZ'
WAZIMAP['profile_builder'] = 'wazimap_tz.profiles.get_census_profile'
WAZIMAP['levels'] = {
    'country': {
        'plural': 'countries',
        'children': ['region'],
    },
    'region': {
        'plural': 'regions',
    }
}
WAZIMAP['comparative_levels'] = ['country']
WAZIMAP['geometry_data'] = {
    'country': 'geo/country.topojson',
    'region': 'geo/region.topojson',
}

WAZIMAP['ga_tracking_id'] = 'UA-44795600-8'
WAZIMAP['twitter'] = '@Code4Africa'

WAZIMAP['map_centre'] = [-6.1523563,35.6754813]
WAZIMAP['map_zoom'] = 6