*** Keywords ***
Capture Page If Test Failed
    Run Keyword If Test Failed            Capture Page Screenshot
    Run Keyword If Test Failed            Capture Current Location

Capture Current Location
    ${current_url}=                       Get Location

Capture Failed and Close All Browsers
    Capture Page If Test Failed
    Close All Browsers