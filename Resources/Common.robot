*** Settings ***
Library     Selenium2Library

*** Variables ***



*** Keywords ***
Go to homepage
    [Arguments]   ${HOMEPAGE}  ${BROWSER}
    Open Browser  ${HOMEPAGE}  ${BROWSER}
    ${login_status}   Run keyword and return status   Title should be    ${TITLE_PRINT}
    Run keyword unless    ${login_status}   Close All Browsers
