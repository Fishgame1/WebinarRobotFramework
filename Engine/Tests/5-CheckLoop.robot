*** Settings ***
Library  String

*** Test Cases ***
#Check for loop
#    log to console  ${\n}First list:
#    ${FIRST_LIST}  create list
#    ...  1
#    ...  2
#    ...  3
#    ...  4
#    ...  5
#    :FOR  ${ELEMENT}  IN  @{FIRST_LIST}
#    \  log to console  ${ELEMENT}
#

#Check for in range
#    log to console  ${\n}Second list:
#    :FOR    ${INDEX}    IN RANGE    0    10
#    \  Exit For Loop If    ${INDEX} == 9
#    \  log to console  ${INDEX}
#
Check while loop
    ${RANDOM}  wait until keyword succeeds  10  1  Take random walue
    log to console  Making sure that this is really one:
    log to console  ${RANDOM}

*** Keywords ***
Take random walue
    ${RANDOM}  Generate random string  1  [NUMBERS]
    log to console  ${RANDOM}
    should be equal as integers  ${RANDOM}  1
    [Return]  ${RANDOM}
