*** Keywords ***
Verify Search Result Header
    [Arguments]                         ${typeOfProperty}                ${city}
    ${convertFirstLetter}               Convert To Title Case            ${typeOfProperty}
    Set Test Variable                   ${convertFirstLetter}
    Element Should Contain              xpath=//div[@class="row"]//h1    Jual ${convertFirstLetter} di ${city}

Verify Search Result Header For Rent
    [Arguments]                         ${typeOfProperty}                ${city}
    ${convertFirstLetter}               Convert To Title Case            ${typeOfProperty}
    Set Test Variable                   ${convertFirstLetter}
    Element Should Contain              xpath=//div[@class="row"]//h1    Sewa ${convertFirstLetter} di ${city}