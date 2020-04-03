*** Settings ***
Resource  Engine/Settings/Keywords.robot

*** Test Cases ***
User write something into search
    Given User has accessed the website
    When User clicked search button
    And User write something into search
    Then Search value should be  something
    element should not be visible
    And There should be something in search field
    And close browser
