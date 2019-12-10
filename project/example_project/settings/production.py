from .base import *  # noqa

ALLOWED_HOSTS = ['studio-forum.navoica.pl', '*',]

STATICFILES_STORAGE = 'django.contrib.staticfiles.storage.StaticFilesStorage'

SOCIALACCOUNT_PROVIDERS = {
  'edx': {
      'EDX_URL': "https://studio-draft.navoica.pl",
  }
}
