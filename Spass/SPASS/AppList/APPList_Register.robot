*** Settings ***
Library    SeleniumLibrary


*** Variables ***
*** Test Cases ***
App_Register_Verify Open SPASS APP registration
    Open browser    https://dev-admin.samsungpass.com/#/app-mgmt/spass-app/apps    chrome
    Set Browser Implicit Wait    10s 
    Sleep    5s
    Wait Until Element Is Visible    //button[@id='spassAppsRegisterBtn']
    ClickElement   //button[@id='spassAppsRegisterBtn'] 
    Sleep    10s
    Wait Until Element Is Visible    //div[@class='css-o8s1mj']
    Sleep    5s
    Close Browser
    
App_Register_Verify Cancel button is enabled
    Open browser    https://dev-admin.samsungpass.com/#/app-mgmt/spass-app/apps    chrome
    Set Browser Implicit Wait    10s 
    Sleep    5s
    Wait Until Element Is Visible    //button[@id='spassAppsRegisterBtn']
    ClickElement    //button[@id='spassAppsRegisterBtn'] 
    Sleep    10s
    Wait Until Element Is Visible    //div[@class='css-o8s1mj']
    Wait Until Element Is Visible    //button[@id='spassAppsRegisterCancelBtn']
    ClickElement   //button[@id='spassAppsRegisterCancelBtn']
    Wait Until Element Is Visible    //div[@class='css-ahdigj']
    Sleep    5s
    Close Browser

App_Register_Verify validation message for all required fields
    Open browser    https://dev-admin.samsungpass.com/#/app-mgmt/spass-app/apps    chrome
    Set Browser Implicit Wait    10s 
    Sleep    5s
    Wait Until Element Is Visible    //button[@id='spassAppsRegisterBtn']
    ClickElement   //button[@id='spassAppsRegisterBtn'] 
    Sleep    10s
    Wait Until Element Is Visible    id=spassAppsRegisterForm
    ClickElement   class=css-frtf5
    Wait Until Element Is Visible    class=css-ebsgka
    Sleep    5s
    Close Browser
    
App_Register_Verify validation message for version is already exist
    Open browser    https://dev-admin.samsungpass.com/#/app-mgmt/spass-app/apps    chrome
    Set Browser Implicit Wait    10s 
    Sleep    5s
    Wait Until Element Is Visible    //button[@id='spassAppsRegisterBtn']
    ClickElement   //button[@id='spassAppsRegisterBtn'] 
    Sleep    10s
    Wait Until Element Is Visible    id=spassAppsRegisterForm
    Input Text    //*[@name="firstAppVer"]    {random index}
    Input Text    //*[@name="midAppVer"]    98
    Input Text    //*[@name="lastAppVer"]    98
    Input Text    //*[@name="fourthAppVer"]    05
    Input Text    //*[@name="downloadUrl"]    www.testrobot.com 
    Clear Element Text    //*[@name="downloadUrl"]
    ClickElement   class=css-frtf5
    ClickElement    //div[3]//div[1]//div[2]//div[1]//div[1]//span[1]
    ClickElement    //div[@id='AppPageContext']//div[4]//div[1]//div[2]//div[1]//div[1]//span[1]
    Sleep    5s
    Wait Until Element Is Visible    //button[@id='spassAppsRegisterBtn']
    Sleep    5s
    Close Browser
    
App_Register_Verify user successfully registered
    Open browser    https://dev-admin.samsungpass.com/#/app-mgmt/spass-app/apps    chrome
    Set Browser Implicit Wait    10s 
    Sleep    5s
    Wait Until Element Is Visible    //button[@id='spassAppsRegisterBtn']
    ClickElement    //button[@id='spassAppsRegisterBtn'] 
    Sleep    10s
    Wait Until Element Is Visible    id=spassAppsRegisterForm
    Input Text    //input[@name='firstAppVer']    15
    Input Text    //input[@name='midAppVer']    98
    Input Text    //input[@name='lastAppVer']   98
    Input Text    //input[@name='fourthAppVer']    05
    Input Text    //input[@name='downloadUrl']    www.testrobot.com 
    ClickElement    //div[3]//div[1]//div[2]//div[1]//div[1]//span[1]
    ClickElement    //div[@id='AppPageContext']//div[4]//div[1]//div[2]//div[1]//div[1]//span[1]
    Sleep    5s
    Click Element    //button[@class='css-frtf5']
    Sleep    5s
    Input Text    //input[@placeholder='Search version'] 15.98.98.05
    ClickElement    //button[@class='css-doaywb']
    Sleep    5s
    Close Browser
    
    
   