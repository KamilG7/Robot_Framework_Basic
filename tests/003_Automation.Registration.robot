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
# robot -d results -i id=1012 tests/003_Automation.Registration.robot


*** Test Cases ***
Registration should fail when "weak password" submitted
    [Documentation]     Registration should fail when incorrect password submitted
    [Tags]              id=1009    Functional   Registration
    AutomationApp.Navigate To Sign Up Page
    AutomationApp.Input Data to "Registration" Form With weak "Password"
    AutomationApp.Accept Terms And Submit "Registration" Form
    AutomationApp.Verify Weak "Password" error visible

Registration should succeed with valid input
    [Documentation]     Registration should succeed with valid input
    [Tags]              id=1003    smoke   Registration
    AutomationApp.Navigate To Sign Up Page
    AutomationApp.Input Correct Data In "Registration" Form
    AutomationApp.Accept Terms And Submit "Registration" Form
    AutomationApp.Verify "Registration" Successfull
    AutomationApp.Sign Out

Registration should fail when "First Name" not submitted
    [Documentation]     Registration should fail when first name is not submitted by User
    [Tags]              id=1005    Functional   Registration
    AutomationApp.Navigate To Sign Up Page
    AutomationApp.Input Data In "Registration" Form Without "First Name"
    AutomationApp.Accept Terms And Submit "Registration" Form
    AutomationApp.Verify No "First Name" error visible

Registration should fail when "Last Name" not submitted
    [Documentation]     Registration should fail when last name is not submitted by User
    [Tags]              id=1006    Functional   Registration
    AutomationApp.Navigate To Sign Up Page
    AutomationApp.Input Data In "Registration" Form Without "Last Name"
    AutomationApp.Accept Terms And Submit "Registration" Form
    AutomationApp.Verify No "Last Name" error visible

Registration should fail when "Email" not submitted
    [Documentation]     Registration should fail when email is not submitted by User
    [Tags]              id=1007    Functional   Registration
    AutomationApp.Navigate To Sign Up Page
    AutomationApp.Input Data In "Registration" Form Without "Email"
    AutomationApp.Accept Terms And Submit "Registration" Form
    AutomationApp.Verify No "Email" error visible

Registration should fail when "Incorrect Email" submitted
    [Documentation]     Registration should fail when incorrect email submitted
    [Tags]              id=1008    Functional   Registration
    AutomationApp.Navigate To Sign Up Page
    AutomationApp.Input Data to "Registration" Form With Incorrect "Email"
    AutomationApp.Accept Terms And Submit "Registration" Form
    AutomationApp.Verify Invalid "Email" error visible

Registration should fail with empty form
    [Documentation]     Registration should fail with empty form
    [Tags]              id=1010    Functional   Registration
    AutomationApp.Navigate To Sign Up Page
    AutomationApp.Accept Terms And Submit "Registration" Form
    AutomationApp.Verify No "First Name" error visible

User should be able to open "Privacy Policy"
    [Documentation]     user should be able to open privacy policy before submitting registration form
    [Tags]              id=1011    Functional   Registration
    AutomationApp.Navigate To Sign Up Page
    AutomationApp.User should be able to open "Privacy Policy"

User should be able to open "Terms and Conditions"
    [Documentation]     user should be able to open terms before submitting registration form
    [Tags]              id=1012    Functional   Registration
    AutomationApp.Navigate To Sign Up Page
    AutomationApp.User should be able to open "Terms and Conditions"

Registration should fail with used email
    [Documentation]     registration should fail when email is already taken
    [Tags]              id=1013    Functional   Registration
    AutomationApp.Navigate To Sign Up Page
    AutomationApp.Input Correct Data In "Registration" Form
    AutomationApp.Accept Terms And Submit "Registration" Form
    AutomationApp.Verify Used "Email" error visible