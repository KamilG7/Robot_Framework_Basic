*** Settings ***
Library                                 SeleniumLibrary
Resource                                ../../data/Variables.robot

*** Keywords ***
Navigate To
    go to                               ${URL_SIGN_IN}

Verify Page Loaded
    element should contain              ${LOGIN_PAGE_LOADED_CONFIRMATION_LOCATOR}       ${LOGIN_PAGE_CONFIRMATION_HEADING}

Input "Email"
    input text                          ${LOGIN_EMAIL_LOCATOR}                          ${USER_EMAIL}

Input "Password"
    input text                          ${LOGIN_PASSWORD_LOCATOR}                       ${USER_PASSWORD}

Click "Sign In" Button
    click button                        ${LOGIN_SIGN_IN_BUTTON_LOCATOR}

Go To "Forgot Password"
    click link                          ${LOGIN_FORGOT_PASSWORD_LOCATOR}

Verify "Forgot Password" Page Loaded
    element should contain              ${LOGIN_FORGOT_PASSWORD_PAGE_LOCATOR}           ${LOGIN_FORGOT_PASSWORD_PAGE_HEADING}

Input "Email" Forgot Password
    input text                          ${LOGIN_FORGOT_PASSWORD_EMAIL_LOCATOR}          ${USER_EMAIL}

Click "Forgot Password" Submit Button
    click button                        ${LOGIN_FORGOT_PASSWORD_SUBMIT_BUTTON}

Verify Successfull "Forgot Password" Action
    element should contain              ${LOGIN_FORGOT_PASSWORD_CONFIRMATION_LOCATOR}       ${LOGIN_FORGOT_PASSWORD_CONFIRMATION_HEADING}

Verify Login Successful
    wait until page contains element    ${REGISTRATION_USER_DROPDOWN}

Check Login Error
    element should contain              ${LOGIN_ERROR_LIST}     ${LOGIN_ERROR_MESSAGE}

Wait For Error List
    wait until page contains element    ${LOGIN_ERROR_LIST}

