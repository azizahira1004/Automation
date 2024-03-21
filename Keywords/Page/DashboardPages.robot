*** Keywords ***
Verify Astrnt Logo
    Wait Until Element Is Visible       xpath=//div[@class="navbar-header"]//a[@class="logo-brand"]//img[@alt="Astronaut Logo"]         timeout=${MED_TIMEOUT}