*** Settings ***
Resource          ../resources.robot
Test Setup        Open Homepage
Test Teardown     TestTeardown.Capture Failed and Close All Browsers

*** Test Cases ***
Open All Property For Sale Url
    #Arrange
    HomepagePages.Scroll To Property Section
    HomepageLogic.Open All Property Content by Index       1
    HomepageLogic.Check If Property Content Is Visible     1
    HomepageLogic.Open Property One By One

Open All Property For Rent Url
    HomepagePages.Scroll To Property Section
    HomepageLogic.Open All Property Content by Index       2
    HomepageLogic.Check If Property Content Is Visible     2
    HomepageLogic.Open Property One By One