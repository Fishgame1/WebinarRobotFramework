from SeleniumLibrary import SeleniumLibrary
from appium.webdriver.webdriver import WebDriver
from robot.libraries.BuiltIn import BuiltIn
from selenium.webdriver.common.by import By


class NewSeleniumLibrary:
    EMAIL = 'a.mail'

    @property
    def get_current_web_driver(self):
        selenium_library = BuiltIn().get_library_instance('SeleniumLibrary')  # type: SeleniumLibrary
        return selenium_library.driver

    @property
    def get_current_appium_driver(self):
        appium_driver = BuiltIn().get_library_instance('AppiumLibrary')._current_application()  # type: WebDriver
        return appium_driver

    def get_email(self):
        return self.get_current_web_driver.find_element(By.CSS_SELECTOR, self.EMAIL).text
