*** Settings ***
Resource          ../resources.robot
Test Setup        TestSetup.Open Login Page
Test Teardown     TestTeardown.Capture Failed and Close All Browsers

*** Test Cases ***
Login
    #Arrange
    LoginLogic.Verify Login Page

    #Action
    LoginPages.Input User Email
    LoginPages.Input User Password
    LoginPages.Click Login Button

    #Assert
    DashboardPages.Verify Astrnt Logo