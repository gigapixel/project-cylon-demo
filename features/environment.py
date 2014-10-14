
from project_cylon.Logger import *
from project_cylon.PageFactory import *
from project_cylon.CommonSteps import *

from project_cylon.World import World as world

def before_all(context):
    Logger.tracebacklimit(0)
    if context.config.debug == True:
        Logger.tracebacklimit(1000)

    if context.config.screenshot == True:
        Logger.enable_screenshots()

    site = "default"
    if hasattr(context.config, "site") and context.config.site is not None:
        site = context.config.site

    domain = PageFactory.get_domain("./config.yaml", site)

    pageobjects = "./pageobjects/*.yaml"
    if PageFactory.check_yaml_syntax(pageobjects) == True:
        world.pages = PageFactory.create_pages(pageobjects, domain)
    else:
        Logger.failed("Stop running.")

def before_feature(context, feature):
    browser = "firefox"
    if hasattr(context.config, "browser") and context.config.browser is not None:
        browser = context.config.browser
    world.open_browser(browser)

    Logger.driver = world.driver

def after_feature(context, feature):
    world.close_browser()
