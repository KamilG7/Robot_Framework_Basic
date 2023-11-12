*** Settings ***
Resource                ./PO/Login.robot
Resource                ./PO/MainSite.robot
Resource                ./PO/ProfessionalServices.robot
Resource                ./PO/Registration.robot
Resource                ../data/Variables.robot
*** Keywords ***
Navigate To Main Site
    MainSite.Navigate To
    MainSite.Verify Page Loaded

Navigate To Professional Services
    MainSite.Navigate To
    ProfessionalServices.Navigate To
    ProfessionalServices.Verify Page Loaded

Input Contact Data for "Free Assessment"
    ProfessionalServices.Input Name to "Name" field
    ProfessionalServices.Input Email to "Email" field
    ProfessionalServices.Input Job Tittle to "Job Tittle" field
    ProfessionalServices.Input Company Name to "Company Name" field
    ProfessionalServices.Input Comment to "Comment" field

Accept Captcha in "Free Assessment" Form
    ProfessionalServices.Accept Captcha

Send "Free Assessment" Form
    ProfessionalServices.Submit "Free Assessment" Form
    ProfessionalServices.Verify Confirmation Page Loaded
    ProfessionalServices.Verify Form Was Submitted Sucessfully

Navigate To Sign Up Page
    Registration.Navigate To
    Registration.Verify Page Loaded

Input Correct Data In "Registration" Form
    Registration.Input "First Name"
    Registration.Input "Last Name"
    Registration.Input "Email"
    Registration.Input "Password"

Accept Terms And Submit "Registration" Form
    Registration.Accept Terms Checkbox
    Registration.Submit Registration Form

Verify "Registration" Successfull
    Registration.Verify Registration Complete

Sign Out
    Registration.Log Out

Input Data In "Registration" Form Without "First Name"
    Registration.Input "Last Name"
    Registration.Input "Email"
    Registration.Input "Password"

Input Data In "Registration" Form Without "Last Name"
    Registration.Input "First Name"
    Registration.Input "Email"
    Registration.Input "Password"

Input Data In "Registration" Form Without "Email"
    Registration.Input "First Name"
    Registration.Input "Last Name"
    Registration.Input "Password"

Input Data to "Registration" Form With Incorrect "Email"
    Registration.Input "First Name"
    Registration.Input "Last Name"
    Registration.Input "Incorrect Email"
    Registration.Input "Password"

Input Data to "Registration" Form With weak "Password"
    Registration.Input "First Name"
    Registration.Input "Last Name"
    Registration.Input "Email"
    Registration.Input "Incorrect Password"

User should be able to open "Terms and Conditions"
    Registration.Open Terms and Conditions
    Registration.Verify Terms and Conditions Opened

User should be able to open "Privacy Policy"
    Registration.Open Privacy Policy
    Registration.Verify Privcy Policy Opened

Verify No "First Name" error visible
    Registration.Wait For Error List
    Registration.Verify No "First Name" error

Verify No "Last Name" error visible
    Registration.Wait For Error List
    Registration.Verify No "Last Name" error

Verify No "Email" error visible
    Registration.Wait For Error List
    Registration.Verify No "Email" error

Verify Invalid "Email" error visible
    Registration.Wait For Error List
    Registration.Verify Invalid "Email" error

Verify Weak "Password" error visible
    Registration.Wait For Error List
    Registration.Verify Weak "Password" error

Verify Used "Email" error visible
    Registration.Wait For Error List
    Registration.Verify Used "Email" error

Navigate To Login Page
    Login.Navigate To
    Login.Verify Page Loaded

Input "Login" Credantials
    Login.Input "Email"
    Login.Input "Password"

Click "Sign In" Button and Check if Successful
    Login.Click "Sign In" Button
    Login.Verify Login Successful

Open Forgot Password Page
    Login.Go To "Forgot Password"
    Login.Verify "Forgot Password" Page Loaded

Forgot Password Input Credantials and Send Form
    Login.Input "Email"
    Login.Click "Forgot Password" Submit Button

Veify Forgot Password Succesfful
    Login.Verify Successfull "Forgot Password" Action

Verify "Login" Error Visible
    Login.Wait For Error List
    Login.Check Login Error

Click "Sign In" Button
    Login.Click "Sign In" Button







