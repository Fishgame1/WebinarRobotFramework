*** Settings ***
Resource  Engine/Settings/Keywords.robot
Library  DataDriver  ./SearchValues.csv

Test Template  Check main page search

Suite Setup  run keywords
...  User has accessed the website
...  User clicked search button
Suite Teardown  close browser

*** Test Cases ***
User write ${VALUE} into search


*** Keywords ***
Check main page search
    [Arguments]  ${VALUE}
    ${text}  set variable  I'm here!
    Given User write ${VALUE} into search
    Then Search value should be  ${VALUE}
    And There should be ${VALUE} in search field

