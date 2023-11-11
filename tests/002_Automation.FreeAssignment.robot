*** Settings ***
Documentation           Test cases for "Main Site" app
Resource                ../resources/AutomationApp.robot
Resource                ../resources/Common.robot
Resource                ../data/Variables.robot
Suite Setup
Test Setup              Common.Begin Web Test
Test Teardown           Common.End Web Test
Suite Teardown
# robot -d results tests/002_Automation.FreeAssignment.robot

*** Test Cases ***
User should be able to apply for free assessment
    [Documentation]     User should be able to apply for free assessment
    [Tags]              id=1002    smoke    FreeAassessment
    AutomationApp.Navigate To Professional Services
    AutomationApp.Input Contact Data for "Free Assessment"
