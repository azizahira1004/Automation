*** Keywords ***
Open Property One By One
    Get Count Property Content
    FOR  ${i}  IN RANGE  1  ${total_content+1}
        Log To Console       ${i}       
        HomepagePages.Get Property Title                       ${i}
        HomepagePages.Get Property Content Url By Index        ${i}
        HomepagePages.Click property By Index                  ${i}
        PropertyPagePages.Verify Redirect To Expected Url      ${property_url}
        PropertyPageLogic.Verify User Already On Property Page Details
        BuiltIn.Run Keyword And Ignore Error        PropertyPagePages.Verify Property Page Title                ${property_title}
        Go Back
        Check If Property Content Is Visible                   ${i}
        # Scroll To Property Section
        # Show All Sale Property Content by Index         2
    END

Check If Property Content Is Visible
    [Arguments]         ${index}
    ${status}           Run Keyword And Return Status       Wait Until Element Is Visible      css=.accordion-content.showContent
    Run Keyword If      '${status}' == 'False'              HomePageLogic.Open All Property Content by Index       ${index}

Open All Property Content by Index
    [Arguments]         ${index}
    HomepagePages.Verify Property Content Section Is Visible
    HomepagePages.Click All Property Content by Index           ${index}