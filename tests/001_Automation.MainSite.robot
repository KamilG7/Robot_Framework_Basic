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
Should Be Able To Access Main Site
    [Documentation]     This is Test1
    [Tags]              id=1001    smoke    MainSite
    AutomationApp.Navigate To Main Site
