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

Input Correct Data In "Registration" Form Without "First Name"
    Registration.Input "Last Name"
    Registration.Input "Email"
    Registration.Input "Password"





