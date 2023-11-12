*** Settings ***
Documentation           Test cases for "Main Site" app
Resource                ../resources/AutomationApp.robot
Resource                ../resources/Common.robot
Resource                ../data/Variables.robot
Suite Setup
Test Setup              Common.Begin Web Test
Test Teardown           Common.End Web Test
Suite Teardown
# robot -d results tests/004_Automation.Login.robot

*** Test Cases ***
Login should succeed with valid crededentials
    [Documentation]     User is able to log in with valid credentials
    [Tags]              id=1004    Functional   Login
    AutomationApp.Navigate To Login Page

Login should fail with empty form
    [Documentation]     Login should fail with empty form
    [Tags]              id=1014    Functional   Login

Forgot password option should work
    [Documentation]     Forgot password option should work
    [Tags]              id=1015    Functional   Login

