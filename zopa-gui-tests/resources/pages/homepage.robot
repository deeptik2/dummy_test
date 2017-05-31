*** Settings ***
Library     Selenium2Library   implicit_wait=5

*** Variables ***
${BROWSER_NAME}    chrome
${GET_ZOPA_LOAN_BUTTON}      css=a.button.button--fullWidth

*** Keywords ***

Open Browser To Zopa Homepage
    [Arguments]      ${ZOPA_HOMEPAGE_URL}
    Open Browser     ${ZOPA_HOMEPAGE_URL}   ${BROWSER_NAME}
    Maximize Browser Window

Click Get A Zopa Loan Button
    Wait Until Element Is Visible    ${GET_ZOPA_LOAN_BUTTON}
    Click Element     ${GET_ZOPA_LOAN_BUTTON}