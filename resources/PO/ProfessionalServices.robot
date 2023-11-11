*** Settings ***
Library         SeleniumLibrary
Resource        ../../data/Variables.robot
*** Variables ***


*** Keywords ***
Navigate To
    click link                            ${PROFESSIONAL_SERVICES_BUTTON}

Verify Page Loaded
    wait until page contains element      ${PROFESSIONAL_SERVICES_LOADED_CONFIRMATION}

Input Name to "Name" field
    input text                            ${PROFESSIONAL_SERVICES_NAME_LOCATOR}       ${PROFESSIONAL_SERVICES_NAME}

Input Email to "Email" field
    input text                            ${PROFESSIONAL_SERVICES_EMAIL_LOCATOR}      ${PROFESSIONAL_SERVICES_EMAIL}

Input Job Tittle to "Job Tittle" field
    input text                            ${PROFESSIONAL_SERVICES_JOB_LOCATOR}        ${PROFESSIONAL_SERVICES_JOB}

Input Company Name to "Company Name" field
    input text                            ${PROFESSIONAL_SERVICES_COMPANY_LOCATOR}    ${PROFESSIONAL_SERVICES_COMPANY}

Input Comment to "Comment" field
    input text                            ${PROFESSIONAL_SERVICES_COMMENT_LOCATOR}    ${PROFESSIONAL_SERVICES_COMMENT}

Accept Captcha
    sleep                                 20s

Submit "Free Assessment" Form
    click button                          ${PROFESSIONAL_SERVICES_SUBMIT_LOCATOR}

Verify Form Was Submitted Sucessfully




