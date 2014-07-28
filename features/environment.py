
from project_cylon.Logger import *
from project_cylon.PageFactory import *
from project_cylon.CommonSteps import *

from project_cylon.World import World as world

def before_all(context):
    browser = "firefox"

    site_config = "default"
    pageobject_files = "./pageobjects/*.yaml"

    Logger.tracebacklimit(0)

    if PageFactory.check_yaml_syntax(pageobject_files) == True:
        world.pages = PageFactory.create_pages(pageobject_files, site_config)
        world.open_browser(browser)
    else:
        Logger.failed("Stop running.")

def after_all(context):
    world.close_browser()
