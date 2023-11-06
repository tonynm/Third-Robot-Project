*** Settings ***
Documentation    This is some basic info about a whole SUITE
Library          SeleniumLibrary
Resource         ../Resources/CrmApp.robot
Resource         ../Resources/CommonApp.robot
Test Setup       CommonApp.Begin Web Test
Test Teardown    CommonApp.End Web Test

# Run the script: robot -d Results Tests/Crm.robot
*** Variables ***
${BROWSER} =                            chrome
${START_URL} =                          https://automationplayground.com/crm/
${VALID_LOGIN_EMAIL} =                  admin@robotframeworktutorial.com
${VALID_LOGIN_PASSWORD} =               admin

*** Test Cases ***
Should be able to add new customer
    [Documentation]                    This is some basic info about the TEST
    [Tags]                             1006    Smoke    Contacts
    CrmApp.Load Home Page
    CrmApp.Login
    CrmApp.Add New Customer
    Sleep                              3s