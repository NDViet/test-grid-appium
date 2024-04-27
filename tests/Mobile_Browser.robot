*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
Open Web Application on Mobile
    [Tags]    first_test
    Open Browser
    ...    url=https://practice-automation.com/popups/
    ...    browser=Chrome
    ...    remote_url=http://localhost:4444/wd/hub
    ...    options=set_capability('platformName','ANDROID')
    Wait Until Element Is Visible    xpath=//button[@id="prompt"]
    Click Element    xpath=//button[@id="prompt"]
    Wait For Expected Condition    alert_is_present
    Input Text Into Alert    NDVIET.ORG    action=ACCEPT
    Wait Until Element Contains    //*[@id="promptResult"]    Nice to meet you, NDVIET.ORG!
    Capture Page Screenshot
    Sleep    20s
