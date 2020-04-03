*** Settings ***
Library  Collections

*** Variables ***

@{VARIABLE_LIST}  value_1  value_2
&{VARIABLE_DICT}  key=value  key_2=value_2

*** Test Cases ***
#Something for lists
#    ${LIST}  create list  value_1  value_2
#
#    ${OTHER_LIST}  create list
#    append to list  ${OTHER_LIST}
#    ...  value_1
#    ...  value_2
#
#    should be equal  ${LIST}   ${OTHER_LIST}
#    should be equal  ${LIST}   ${VARIABLE_LIST}
#
#    ${CONVERTED_LIST}  convert to list  (value_1, value_2)
#    log to console  ${\n}${LIST}
#    log to console  ${CONVERTED_LIST}
#
#Check arguments
#    ${LIST}  create list  value_1  value_2  value_3
#    keyword with three arguments  @{LIST}

Something for dicts
    ${DICT}  create dictionary  key  value  key_2  value_2

    ${OTHER_DICT}  create dictionary
    set to dictionary  ${OTHER_DICT}
    ...    key    value
    ...    key_2  value_2

    should be equal  ${DICT}   ${OTHER_DICT}
    should be equal  ${DICT}   ${VARIABLE_DICT}
    log to console  ${\n}${DICT}

*** Keywords ***
keyword with three arguments
    [Arguments]  ${FIRST}  ${SECOND}  ${THIRD}
    log to console  ${\n}${FIRST}
    log to console  ${SECOND}
    log to console  ${THIRD}