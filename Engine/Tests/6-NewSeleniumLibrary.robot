*** Settings ***
Resource  Engine/Settings/Keywords.robot
Library  Engine/Libraries/NewSeleniumLibrary.py
Library  Engine/Libraries/GetRobotValue.py


*** Variables ***
${HIDDEN_VARIABLE}  I'm not here!

*** Test Cases ***
#Check if email is correct
#    User has accessed the website
#    ${EMAIL}  get email
#    log to console  ${EMPTY}
#    log to console  get email
#    log to console  ${EMAIL}
#    should be equal as strings  ${EMAIL}  office@jcommerce.pl
#    close browser

Check main page
#    ${VALUE}  get variable value  ${HIDDEN_VARIABLE}
#    ${VALUE}  get variable by full text  HIDDEN_VARIABLE
#    ${VALUE}  get variable by full text  ${HIDDEN_VARIABLE}
    ${VALUE}  get variable  HIDDEN_VARIABLE
    log to console  ${\n}${VALUE}
