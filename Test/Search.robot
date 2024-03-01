*** Settings ***
Resource          ../resources.robot
Test Setup        Open Homepage
Test Teardown     TestTeardown.Capture Failed and Close All Browsers

*** Test Cases ***
Search For Sale Property by Spesific Type and Location
    Verify Search Section
    Open Property List
    Verify Property List Is Visible     
    Select Type Of Property                 ${komersialProperty}    
    Input City                              ${city2}
    Click Submit Button
    Verify Selected Url                     ${komersialProperty}    
    Verify Search Result Header             ${komersialProperty}           ${city2}
