*** Settings ***
Resource  Engine/Settings/Settings.robot

*** Keywords ***
User has accessed the website
    Open browser    ${BACKOFFICE_FRONTEND_URL}   ${BROWSER}  executable_path=${DRIVER_EXECUTABLE}
    wait until element is visible  ${LOGO_XPATH}

User clicked search button
    click element  ${SEARCH_XPATH}
    wait until element is visible  ${SEARCH_INPUT}

User write ${VALUE} into search
    input text  ${SEARCH_INPUT}  ${VALUE}

Search value should be
    [Arguments]  ${VALUE}
    ${TEXT}  get value  ${SEARCH_INPUT}
    should be equal as strings  ${TEXT}  ${VALUE}

There should be ${VALUE} in search field
    ${TEXT}  get value  ${SEARCH_INPUT}
    should be equal as strings  ${TEXT}  ${VALUE}
