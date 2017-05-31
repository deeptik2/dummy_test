*** Settings ***
Library     Selenium2Library   implicit_wait=5

*** Variables ***
${EMAIl_FIELD}    id=member_email
${FIRST_NAME_INPUT_BOX}    id=applications_loan_apply_first_name
${LAST_NAME_INPUT_BOX}    id=applications_loan_apply_last_name
${MOBILE_NUMBER_INPUT_BOX}    id=applications_loan_apply_home_phone
${BIRTH_DAY_INPUT_BOX}    id=date_of_birth_day
${BIRTH_MONTH_INPUT_BOX}    id=date_of_birth_month
${BIRTH_YEAR_INPUT_BOX}    id=date_of_birth_year
${POSTCODE_INPUT_BOX}   id=address_postcode
${SALARY_INPUT_BOX}    id=applications_loan_apply_salary
${RENT_INPUT_BOX}    id=applications_loan_apply_rent
${PASSWORD_INPUT_BOX}    id=member_password


*** Keywords ***


Provide Input For About You Section
    [Arguments]     ${email_adress}  ${fname}  ${lname}  ${mobile_number}  ${dob}  ${loan_reason}


Provide Email Address    ${email}
   Input Text   ${EMAIl_FIELD}   ${email}

Provide Title    ${salutations}



Provide First And Last Name    ${firstname}  ${lastname}
   Input Text      ${FIRST_NAME_INPUT_BOX}   ${firstname}
   Input Text      ${LAST_NAME_INPUT_BOX}   ${lastname}

Provide Phone Number   ${phone_number}
   Input Text      ${MOBILE_NUMBER_INPUT_BOX}   ${phone_number}

Provide Date of Birth   ${day}  ${month}  ${year}
   Input Text      ${BIRTH_DAY_INPUT_BOX}   ${day}
   Input Text      ${BIRTH_MONTH_INPUT_BOX}   ${month}
   Input Text      ${BIRTH_YEAR_INPUT_BOX}   ${year}

Provide Loan Reason    ${HOME_IMPROVEMENTS}
