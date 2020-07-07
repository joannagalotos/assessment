*** Settings ***
Documentation   Invalid Username and Empty Password
Library         Selenium2Library
Resource        ../Resources/Common.robot

Suite Setup         Go to homepage    ${OPTIMYAPP_HOMEPAGE}   ${BROWSER}
Suite Teardown      Close Browser

*** Variables ***
${BROWSER}               chrome
${OPTIMYAPP_HOMEPAGE}    https://login.optimyapp.com/
${USERNAME}              sample_invalid_username
${PASSWORD}              ${EMPTY}
${TITLE_PRINT}           Optimy login
${USERNAME_ELEMENT_ID}   email
${PASSWORD_ELEMENT_ID}   password
${LOGIN_BUTTON_CLASS}    btn.btn-success.btn-block


*** Test Cases ***
Invalid Username and Empty Password
    [Documentation]
    ...  *****************
    ...  Basic information
    ...  *****************
    ...  This Test Case basically verifies the functionality if the user input is Invalid Username and Empty Password
    ...
    ...  ******************
    ...  History of changes
    ...  ******************
    ...  - DD.MM.YYYY - <Comment changes made>

    Input Invalid Username and Empty Password   ${OPTIMYAPP_HOMEPAGE}    ${BROWSER}


*** Keywords ***
Input Invalid Username and Empty Password
    [Arguments]   ${OPTIMYAPP_HOMEPAGE}    ${BROWSER}
    Input Text          name=${USERNAME_ELEMENT_ID}     ${USERNAME}
    Input Password      name=${PASSWORD_ELEMENT_ID}     ${PASSWORD}
    ${click_status}   Run keyword and return status   Click Element   class=${LOGIN_BUTTON_CLASS}
    Run keyword if   ${click_status}   Run keywords   Page should contain    Please enter a valid email address
    ...  AND   Page should contain    This field is required
    ...  AND   Log   "Correct status observed"
    ...  ELSE  fail
