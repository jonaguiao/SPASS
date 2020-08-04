*** Settings ***
Library    SeleniumLibrary


*** Variables ***
*** Test Cases ***


AppList_Export to Excel
    Open browser    https://dev-admin.samsungpass.com/#/app-mgmt/spass-app/apps    chrome
    Set Browser Implicit Wait    10s 
    Sleep    5s
    Wait Until Element Is Visible    //button[@id='btnAppsListExport']
    ClickElement    //button[@id='btnAppsListExport']