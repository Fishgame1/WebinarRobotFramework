*** Settings ***
Resource  Engine/Settings/Keywords.robot
Library  DataDriver  ./SearchValues.csv

Test Template  Check main page search


*** Test Cases ***
User write ${VALUE} into search


*** Keywords ***
Check main page search
    [Arguments]  ${VALUE}
    Given User has accessed the website
    When User clicked search button
    And User write ${VALUE} into search
    Then Search value should be  ${VALUE}
    And There should be ${VALUE} in search field
    Then close browser
