*** Settings ***
Library         SeleniumLibrary
Resource        ../../data/Variables.robot

*** Keywords ***
Navigate To
    go to       ${URL_SIGN_IN}

Verify Page Loaded
    element should contain      ${LOGIN_PAGE_LOADED_CONFIRMATION_LOCATOR}       ${LOGIN_PAGE_CONFIRMATION_HEADING}
