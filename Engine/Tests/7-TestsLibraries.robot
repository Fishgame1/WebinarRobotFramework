*** Settings ***
Library  Engine/Libraries/SecondTestClass.py
Library  Engine/Libraries/FirstTestClass.py  WITH NAME  first
Library  Engine/Libraries/FirstTestClass.py  WITH NAME  first_again

*** Test Cases ***
#Check creation
#    log to console  I'm here!
#
#Check first libraries
#    log to console  ${\n}FIRST CHANGE:
#    first.change value  FIRST!!!
#
#    log to console  ${\n}FIRST CHANGE FOR SECOND FIRST:
#    first_again.change_value  FIRST AGAIN!!!
#
#    log to console  ${\n}SECOND CHANGE FOR FIRST ONE:
#    first.change value  not again...
#
#
#Check libraries order
#    change value  FIRST!!!
#
#How to get value
#    log to console  ${EMPTY}
#    ${FISRT_INSTANCE}  get library instance  first
#    ${FIRST_AGAIN_INSTANCE}  get library instance  first_again
#    set library search order  first  first_again  Engine/Libraries/SecondTestClass.py
#    change value  FIRST!!!
#    log to console  CHecking values:
#    log to console  ${FISRT_INSTANCE.value}
#    log to console  ${FIRST_AGAIN_INSTANCE.value}
#    ${VALUE}  get value
#    log to console  ${VALUE}

#This will not work
#    set library search order  first  first_again  Engine/Libraries/SecondTestClass.py
#    log to console  ${EMPTY}
#    first_again.value  FIRST!!!
#
#This will also not work
#    log to console  ${EMPTY}
#    ${FISRT_INSTANCE}  get library instance  first
#    ${FISRT_INSTANCE.value}  FIRST!!!
#    log to console  ${FISRT_INSTANCE.value}
#
#Unfortunetely this is not working also
#    log to console  ${EMPTY}
#    ${SECOND_INSTANCE}  get library instance  SecondTestClass
#    ${SECOND_INSTANCE}.change_value
#
#But this one will to the job!
#    log to console  ${EMPTY}
#    ${FISRT_INSTANCE}  get library instance   first
#    ${FIRST_AGAIN_INSTANCE}  get library instance  first_again
#    ${FISRT_INSTANCE.value}  set variable  FIRST!!!
#    log to console  ${\n}${FISRT_INSTANCE.value}
#
This will work too but not as may be expected!
    log to console  ${EMPTY}
    ${VARIABLE}  SecondTestClass.get value
    SecondTestClass.change value  SECOND!!!!
    ${OTHER_VARIABLE}  get value
    ${SECOND}  get library instance  SecondTestClass
    log to console  ${VARIABLE}
    log to console  ${OTHER_VARIABLE}
    log to console  ${SECOND.value}
