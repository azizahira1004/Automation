*** Keywords ***
Open Chrome Browser
    [Timeout]                            120 seconds
    [Arguments]                          ${url}=about:blank     ${alias}=${EMPTY}
    Run Keyword If                       '${HEADLESS_BROWSER}'=='true'               Headless Browser Setup
    Open Browser                         ${url}                    ${BROWSER}        alias=chrome

Open Homepage
    Open Chrome Browser
    Go To               ${SERVER}

Open Login Page
    Open Chrome Browser
    Go To               ${LOGIN_PAGE}