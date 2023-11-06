*** Settings ***
Library    SeleniumLibrary
Resource    PO/LandingPage.robot
Resource    PO/LoginPage.robot
Resource    PO/AddCustomers.robot

*** Keywords ***
Load Home Page
    LandingPage.Load
    LandingPage.Verify Page Loaded

Login
    LandingPage.Click On Login Page
    LandingPage.Verify Login Page Loaded
    LoginPage.Input Email
    LoginPage.Input Password
    LoginPage.Click On Submit Button
    LoginPage.Verify Customers Page Loaded

Add New Customer
    AddCustomers.Click On New Customers Button
    AddCustomers.Verify Add Customer Page Loaded
    AddCustomers.Input Customer Info
    AddCustomers.Click Submit
    AddCustomers.Verify Customer Succesfully Added