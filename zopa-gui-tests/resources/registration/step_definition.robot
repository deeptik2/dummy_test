*** Settings ***
Resource     ../pages/homepage.robot
Resource     ../pages/loans.robot
Resource     ../pages/sign_up.robot
Library      ../../library/user_data_generator.py

*** Variables ***
${ZOPA_HOMEPAGE_URL}     http://www.zopa.com/


*** Keywords ***

We Are On The Zopa Homepage
    Open Browser To Zopa Homepage     ${ZOPA_HOMEPAGE_URL}

We Click On 'Get A Zopa Loan' Button
    Click Get A Zopa Loan Button

We Get Personalized Rates For The Term Of One Year
    Click On One Year Loan Term
    Click Get Personalised Rates

We Provide 'About You' Details
    ${firstname}  ${lastname}=    Get First And Last Name
    ${email}=    set variable   ${firstname}.${lastname}@zxxx.com
    ${phone_number}=    Set Variable   020 7758 8577
    ${post_code}=   Get Random Postcode
    Provide Email Address    ${email}
    Provide Title    ms
    Provide First And Last Name    ${firstname}  ${lastname}
    Provide Phone Number   ${phone_number}
    Provide Date of Birth   ${day}  ${month}  ${year}
    Provide Loan Reason    ${HOME_IMPROVEMENTS}







