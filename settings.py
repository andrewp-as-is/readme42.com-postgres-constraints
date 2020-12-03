from django_configurations_base import BaseConfiguration
from django_configurations_ec2 import EC2Configuration
from django_configurations_github_oauth import GithubOAuthConfiguration

class Base(BaseConfiguration,GithubOAuthConfiguration):
    INSTALLED_APPS_FILE = 'apps.txt'
    INSTALLED_APPS_FIND = True

class Dev(Base):
    DEBUG = True

class Prod(Base,EC2Configuration):
    DEBUG = False

