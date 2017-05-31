*** Settings ***
Library     Selenium2Library   implicit_wait=5

*** Variables ***
${term_loan_radio_button_identifier}     css=label.customRadioButton__label.tableResult__radiocheckLabel
${radio_button_name}    term
${term_one_year_loan}     term_0
${personalised_rates_button_identifier}     css=#submit-loan-button

*** Keywords ***

Click On One Year Loan Term
    Wait Until Element Is Visible    ${term_loan_radio_button_identifier}
    Select Radio Button     term   ${term_one_year_loan}

Click Get Personalised Rates
    Sleep    5s
    Execute Javascript     window.scrollTo(0,400)
    Wait Until Element Is Visible	${personalised_rates_button_identifier}
    Click Element     ${personalised_rates_button_identifier}