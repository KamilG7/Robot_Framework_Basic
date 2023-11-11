*** Settings ***
Library         SeleniumLibrary
Resource        ../../data/Variables.robot

*** Keywords ***
Navigate To
    go to       ${URL_SIGN_UP}

Verify Page Loaded
    element should contain    ${SIGN_UP_PAGE_LOADED_CONFIRMATION_LOCATOR}       ${SIGN_UP_PAGE_HEADING}

Input "First Name"
    input text      ${REGISTRATION_FIRST_NAME_LOCATOR}      ${USER_FIRST_NAME}

Input "Last Name"
    input text      ${REGISTRATION_LAST_NAME_LOCATOR}       ${USER_LAST_NAME}

Input "Email"
    input text      ${REGISTRATION_EMAIL_LOCATOR}       ${USER_EMAIL}

Input "Password"
    input text      ${REGISTRATION_PASSWORD_LOCATOR}    ${USER_PASSWORD}

Accept Terms Checkbox
    click element       ${REGISTRATION_CHECKBOX_LOCATOR}

Submit Registration Form
    click button        ${REGISTRATION_SIGN_UP_BUTTON_LOCATOR}

Verify Registration Complete
    wait until page contains element    ${REGISTRATION_USER_DROPDOWN}

Log Out
    click element       ${REGISTRATION_USER_DROPDOWN}
    click link          ${REGISTRATION_SIGN_OUT}

Input "Incorrect Email"
    input text          ${REGISTRATION_EMAIL_LOCATOR}       ${USER_INCORRECT_EMAIL}

Input "Incorrect Password"
    input text          ${REGISTRATION_PASSWORD_LOCATOR}    ${USER_INCORRECT_PASSWORD}

Open Terms and Conditions
    click link          ${REGISTRATION_TERMS_LOCATOR}

Open Privacy Policy
    click link          ${REGISTRATION_PRIVACY_LOCATOR}

Verify Terms and Conditions Opened
    element should contain      ${TERMS_AND_CONDITION_HEADING_LOACTOR}      ${TERMS_AND_CONDITIONS_HEADING}

Verify Privcy Policy Opened
    element should contain      ${PRIVACY_POLICY_LOCATOR}                   ${PRIVACY_POLICY_HEADING}

