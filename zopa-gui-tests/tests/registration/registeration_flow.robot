*** Settings ***
Documentation     Test the Zopa Loan Registration Flows
Resource     ../../resources/registration/step_definition.robot
Test Teardown      Close Browser


*** Test Cases ***

Get Zopa Loan For New User
    Given We Are On The Zopa Homepage
    And We Click On 'Get A Zopa Loan' Button
    And We Get Personalized Rates For The Term Of One Year
    When We Provide 'About You' Details
    And We Provide Address History    ${VALID_UK_POSTCODE}
    And We Provide Financial Details    ${EMPLOYED_FULL_TIME}  ${ANNUAL_INCOME_BEFORE_TAX}  ${OWNS_HOME_WITh_MORTAGE}  ${PASSWORD}
#    And We Click on 'Calculate My Rates'
#    Then The Customer Should Be Registered
