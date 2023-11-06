*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Input Email
    Input Text                         id=email-id    ${VALID_LOGIN_EMAIL}

Input Password
    Input Text                         id=password    ${VALID_LOGIN_PASSWORD}

Click On Submit Button
    Click Button                       id=submit-id

Verify Customers Page Loaded
    Wait Until Page Contains           Our Happy Customers