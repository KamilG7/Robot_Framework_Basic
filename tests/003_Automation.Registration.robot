*** Settings ***
Documentation           Test cases for "Main Site" app
Resource                ../resources/AutomationApp.robot
Resource                ../resources/Common.robot
Resource                ../data/Variables.robot
Suite Setup
Test Setup              Common.Begin Web Test
Test Teardown           Common.End Web Test
Suite Teardown
# robot -d results tests/003_Automation.Registration.robot

*** Test Cases ***
Registration should succeed with valid input
    [Documentation]     Registration should succeed with valid input
    [Tags]              id=1003    smoke   Registration
    AutomationApp.Navigate To Sign Up Page
    AutomationApp.Input Correct Data In "Registration" Form
    AutomationApp.Accept Terms And Submit "Registration" Form
    AutomationApp.Verify "Registration" Successfull
    AutomationApp.Sign Out