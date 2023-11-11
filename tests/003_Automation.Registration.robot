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