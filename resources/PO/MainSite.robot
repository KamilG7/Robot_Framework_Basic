*** Settings ***
Library                                     SeleniumLibrary
Resource                                    ../../data/Variables.robot

*** Variables ***
${MAIN_SITE_IMAGE_LOCATOR} =                xpath=//img[@class="wp-image-216051"]


*** Keywords ***
Navigate To
    go to                                   ${URL_HOME_PAGE}

Verify Page Loaded
    wait until page contains element        ${MAIN_SITE_IMAGE_LOCATOR}