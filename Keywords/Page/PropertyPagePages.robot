*** Keywords ***
Verify Redirect To Expected Url
    [Arguments]                 ${Property_url}
    Location Should Be          ${Property_url}
    
Verify Search Bar    
    Wait Until Element Is Visible       name=search-bar             timeout=${MIN_TIMEOUT}

Verify Filter Section
    Wait Until Element Is Visible       class=filterOuter           timeout=${MIN_TIMEOUT}
    
Verify Filter Quick Section
    Wait Until Element Is Visible       class=FilterQuick           timeout=${MIN_TIMEOUT}

Verify Filter Sorting Section
    Wait Until Element Is Visible       class=FilterQuick__sort     timeout=${MIN_TIMEOUT}

Verify Property Page Title
    [Arguments]                 ${saleProperty_title}
    Element Should Contain      xpath=//div[@class="row"]//h1            ${saleProperty_title} di Indonesia  