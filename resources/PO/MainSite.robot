*** Settings ***
Library                                     SeleniumLibrary
Resource                                    ../../data/Variables.robot

*** Variables ***

*** Keywords ***
Navigate To
    go to                                   ${URL_HOME_PAGE}

Verify Page Loaded
    wait until page contains element        ${MAIN_SITE_LOADED_CONFIRMATION_LOCATOR}

Add Cookie Test
    Add Cookie                              ${COOKIE_NAME}    ${COOKIE_VALUE}

Check If Cookie Added Successfuly
    ${cookie}    Get Cookie                 ${COOKIE_NAME}
    Should Be Equal                         ${cookie.value}    ${COOKIE_VALUE}