*** Settings ***
Documentation           Test cases for "Main Site" app
Resource                ../resources/AutomationApp.robot
Resource                ../resources/Common.robot
Resource                ../data/Variables.robot
Suite Setup
Test Setup              Common.Begin Web Test
Test Teardown           Common.End Web Test
Suite Teardown
# robot -d results tests/001_Automation.MainSite.robot

*** Test Cases ***
Should Be Able To Access "Main Site"
    [Documentation]     "Main Site" should load
    [Tags]              id=1001    smoke    MainSite
    AutomationApp.Navigate To Main Site

It Should Be Possible To Add Cookie
    [Documentation]     Check if possible to add cookie
    [Tags]              id=1016    Functional    MainSite
    AutomationApp.Navigate To Main Site
    AutomationApp.Check If Possible To Add Cookie
