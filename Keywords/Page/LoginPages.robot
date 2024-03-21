*** Keywords ***
Verify Login Welcome
    Page Should Contain     Hello Recruiter, Welcome to

Verify Astrnt Logo
    Wait Until Page Contains Element        xpath=//div[@class="login-header"]//img[@alt="Astronaut"]           timeout=${MED_TIMEOUT}

Verify Form Login
    Wait Until Page Contains Element        class=form-login

Input User Email
    Input Text              _e_mail         ira+1@astrnt.co    

Input User Password
    Input Text              _p_assword      @Astro1234

Click Login Button
    Click Element           submit
