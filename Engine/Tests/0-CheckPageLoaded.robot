*** Settings ***
Library  AlertKeywords
Library  BrowserManagementKeywords
Library  CookieKeywords
Library  ElementKeywords
Library  FormElementKeywords
Library  FrameKeywords
Library  JavaScriptKeywords
Library  RunOnFailureKeywords
Library  ScreenshotKeywords
Library  SelectElementKeywords
Library  TableElementKeywords
Library  WaitingKeywords
Library  WindowKeywords
Library  SeleniumLibrary


*** Variables ***
${URL}  https://www.jcommerce.pl/
${BROWSER}  Chrome
${DRIVER_EXECUTABLE}  Drivers/chromedriver.exe
${LOGO_XPATH}  //header//img

*** Keywords ***
User has accessed the website
    Open browser  ${URL}  ${BROWSER}  executable_path=${DRIVER_EXECUTABLE}
    wait until element is visible  ${LOGO_XPATH}

*** Test Cases ***
Check main page
    Given User has accessed the website
    Then title should be  JCommerce – outsourcing IT, systemy BI, ERP, EMM, Managed Services
    And close browser

Check main page second time
    [Setup]  User has accessed the website
    title should be  JCommerce – outsourcing IT, systemy BI, ERP, EMM, Managed Services
    [Teardown]  close browser
