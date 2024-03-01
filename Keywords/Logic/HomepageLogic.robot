*** Keywords ***
Open Property One By One
    Get Count Property Content
    FOR  ${i}  IN RANGE  1  ${total_content+1}
        Log To Console       ${i}       
        HomepagePages.Get Property Title                       ${i}
        HomepagePages.Get Property Content Url By Index        ${i}
        HomepagePages.Click Property In The New Tab            ${property_url}
        ${tab1}                 Switch Window                  NEW
        PropertyPagePages.Verify Redirect To Expected Url      ${property_url}
        PropertyPageLogic.Verify User Already On Property Page Details
        BuiltIn.Run Keyword And Ignore Error        PropertyPagePages.Verify Property Page Title                ${property_title}
        Close Window
        Switch Window    MAIN
    END

Check If Property Content Is Visible
    [Arguments]         ${index}
    ${status}           Run Keyword And Return Status       HomepagePages.Verify Property Content List Is Visible
    Run Keyword If      '${status}' == 'False'              HomePageLogic.Open All Property Content by Index       ${index}

Open All Property Content by Index
    [Arguments]         ${index}
    HomepagePages.Verify Property Content Section Is Visible
    HomepagePages.Click All Property Content by Index           ${index}

Check If List Property on Search Content Is Visible
    HomepagePages.Open Property List
    ${status}           Run Keyword And Return Status       HomepagePages.Verify Property List Is Visible
    Run Keyword If      '${status}' == 'False'              HomepagePages.Open Property List