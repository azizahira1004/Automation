*** Settings ***
Resource          ../resources.robot
Test Setup        Open Homepage
Test Teardown     TestTeardown.Capture Failed and Close All Browsers

*** Test Cases ***
Search For Want To Buy Property by Spesific Type and Location
    Verify Search Section
    Check If List Property on Search Content Is Visible    
    Select Type Of Property                 ${komersialProperty}    
    Input City                              ${city1}
    Click Submit Button
    Verify Selected Url                     ${komersialProperty}    
    Verify Search Result Header             ${komersialProperty}           ${city1}

Search For Want To Rent Property by Spesific Type and Location
    Verify Search Section
    Click Tab Saya Ingin Sewa
    Check If List Property on Search Content Is Visible   
    Select Type Of Property                 ${kostProperty}    
    Input City                              ${city2}
    Click Submit Button
    Verify Selected Url                     ${kostProperty}
    Verify Search Result Header For Rent    ${kostProperty}           ${city2}

