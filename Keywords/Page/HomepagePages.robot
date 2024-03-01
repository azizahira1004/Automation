*** Keywords ***
Scroll To Property Section
    Scroll Element Into View    class=upperFooter                                                                                         

Verify Property Content Section Is Visible
    Wait Until Element is Visible       xpath=//div[@class="accordion"]                 timeout=${MED_TIMEOUT}

Click All Property Content by Index
    [Arguments]                 ${index}
    Click Button                xpath=//div[@class="accordion"][${index}]//button                                                                  

Verify Property Content List Is Visible
    Wait Until Element Is Visible      css=.accordion-content.showContent
    
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

Click Property In The New Tab
    [Arguments]                 ${property_url}
    Execute JavaScript          window.open('${property_url}', '_blank')

Open List Of Property
    Click Element               css=.has-value           

Select Type Of Property
    [Arguments]         ${typeOfproperty}
    Click Element       xpath=//ul[contains(@class,'ui-molecules-select__field-options')]//li[contains(text(),"${typeOfproperty}")]

Verify Search Section
    Wait Until Element Is Visible           css=.searchBarHome                  timeout=${MIN_TIMEOUT}

Open Property List
    Click Element                           xpath=//div[@class="searchBarHome--main__col"]//div[@class="ui-molecules-select searchBarHome--main__filter_select"]
    
Verify Property List Is Visible    
    Page Should Contain Element             xpath=//ul[contains(@class,'ui-molecules-select__field-options-position-bottom')]      

Input City
    [Arguments]           ${city}
    Input Text                              search-bar              ${city}

Click Submit Button
    Click Button                            css=.searchBarHome--submit

Verify Selected Url
    [Arguments]                             ${typeOfproperty}    
    Location Should Contain                 /${typeOfproperty}/

Click Tab Saya Ingin Sewa
    Click Element    xpath=//button[@class='searchBarHome--price__button ui-atomic-button ui-atomic-button__size-default ui-atomic-button__theme-default']/span[text()='Saya ingin Sewa']
