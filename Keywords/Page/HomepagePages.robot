*** Keywords ***
Scroll To Property Section
    Scroll Element Into View    class=upperFooter                                                                                         

Verify Property Content Section Is Visible
    Wait Until Element is Visible       xpath=//div[@class="accordion"]                 timeout=${MED_TIMEOUT}

Click All Property Content by Index
    [Arguments]                 ${index}
    Click Button                xpath=//div[@class="accordion"][${index}]//button                                                                  
 
Get Count Property Content
    ${total_content}=           Get Element Count                  //div[contains(@class, 'accordion-content') and contains(@class, 'showContent')]/a              
    Set Test Variable           ${total_content}

Get Property Content Url By Index
    [Arguments]                 ${index}
    ${property_url}=            Get Element Attribute           xpath=//div[contains(@class, 'accordion-content') and contains(@class, 'showContent')]/a[${index}]        href                                                                                                                                                     
    Set Test Variable           ${property_url}

Get Property Title
    [Arguments]                 ${index}
    ${property_title}=          Get Text             xpath=//div[contains(@class, 'accordion-content') and contains(@class, 'showContent')]/a[${index}]               
    Set Test Variable           ${property_title}

Click property By Index
    [Arguments]                 ${index}
    Click Element               xpath=//div[contains(@class, 'accordion-content') and contains(@class, 'showContent')]/a[${index}]
                                                                                                                                                                
Open Property Page url With New Tab
    [Arguments]                 ${Property_url}
    Execute Javascript          window.open('${Property_url}');