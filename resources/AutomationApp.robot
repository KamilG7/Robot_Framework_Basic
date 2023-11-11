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