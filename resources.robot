*** Settings ***

Library          SeleniumLibrary    10    run_on_failure=None
Library          Collections
Library          OperatingSystem
Library          String
Library          FakerLibrary
Library          XvfbRobot
Library          DateTime
Library          DebugLibrary
Library          RequestsLibrary
Library          REST
Library          Process

Resource        TestSetup.robot
Resource        TestTeardown.robot
Resource        Keywords/Page/HomepagePages.robot
Resource        Keywords/Logic/HomepageLogic.robot
Resource        Keywords/Page/PropertyPagePages.robot
Resource        Keywords/Logic/PropertyPageLogic.robot

*** Variable ***
${SERVER}                 https://www.99.co/id
${BROWSER}                gc
${BROWSER_ALIAS}          Chrome
${DELAY}                  0
${HEADLESS_BROWSER}       false
${EMAIL}                  iranurazizah1004@gmail.com
${PASSWORD}      
${MIN_TIMEOUT}            3
${MED_TIMEOUT}            5
${MAX_TIMEOUT}            10