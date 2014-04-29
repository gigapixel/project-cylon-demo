import sys
import yaml

from project_cylon.WorldContext import *
from project_cylon.CommonSteps import *


content = open("./settings.yaml", "r")
settings = yaml.load(content)

def before_all(context):
    World.OpenBrowser(settings['RUN_ON_BROWSER'])
    World.LoadPageObjects("./pageobjects/*.yaml", settings['SITE_URL'])

def after_all(context):
    World.CloseBrowser()