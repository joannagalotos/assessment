*** Settings ***
Documentation   Valid Username and Empty Password
Library         Selenium2Library
Resource        ../Resources/Common.robot

Suite Setup         Go to homepage    ${OPTIMYAPP_HOMEPAGE}   ${BROWSER}
Suite Teardown      Close Browser

*** Variables ***
${BROWSER}               chrome
${OPTIMYAPP_HOMEPAGE}    https://login.optimyapp.com/
${USERNAME}              joannamariegalotos@gmail.com
${PASSWORD}              ${EMPTY}
${TITLE_PRINT}           Optimy login
${USERNAME_ELEMENT_ID}   email
${PASSWORD_ELEMENT_ID}   password
${LOGIN_BUTTON_CLASS}    btn.btn-success.btn-block


*** Test Cases ***
Valid Username and Empty Password
    [Documentation]
    ...  *****************
    ...  Basic information
    ...  *****************
    ...  This Test Case basically verifies the functionality if the user input empty password
    ...  and correct user name
    ...
    ...  ******************
    ...  History of changes
    ...  ******************
    ...  - DD.MM.YYYY - <Comment changes made>

    Input Valid Username and Empty Password   ${OPTIMYAPP_HOMEPAGE}    ${BROWSER}


*** Keywords ***
Input Valid Username and Empty Password
    [Arguments]   ${OPTIMYAPP_HOMEPAGE}    ${BROWSER}
    Input Text          name=${USERNAME_ELEMENT_ID}     ${USERNAME}
    Input Password      name=${PASSWORD_ELEMENT_ID}     ${PASSWORD}
    ${click_status}   Run keyword and return status   Click Element   class=${LOGIN_BUTTON_CLASS}
    Run keyword if   ${click_status}   Run keywords   Page should contain    This field is required
    ...  AND   Log   "Correct status observed, Empty Password must prompt This field is required after clicking Login Button"
    ...  ELSE   fail   It must prompt that Password must be required.
