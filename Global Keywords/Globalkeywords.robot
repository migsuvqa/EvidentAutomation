*** Settings ***
Documentation    Evident design end to end automation
Library    Selenium2Library
Library    DateTime
Library    copy.py
Library    clipboard
Library    Collections
Library    String
Library    OperatingSystem
*** Variables ***
${browser}    edge
${Url}    https://stagingevidentdigital.xyz/
${username}    labtestautomation@getnada.com
${password}    P@ssword1
${labname}    Automation lab
${getcasetime}    Get Text    xpath=/html/body/ui-view/ui-view/lab-case-management/div/div[2]/div[5]/div[1]/table/tbody/tr[1]/td[4]
${edusername}    design@getnada.com
${edpassword}    password1
${caseuploadfile}    "C:\Users\Nimbyx\Documents\Robot - framework\Evident Automation\Global Keywords\Globalkeywords.robot"
${filepath}    ${CURDIR}/Biggerfile - Copy (3).zip
${completedcase1}    961298360
${downloadcaseno1}    Get Text    xpath=/html/body/ui-view/ui-view/lab-case-management/div/div[2]/div[5]/div[1]/table/tbody/tr/td[2]/div[1]/p[1]

*** Keywords ***
Go to evident staging
    Open browser    ${Url}    ${browser}
    Set Browser Implicit Wait    100s
    Maximize Browser Window

Login lab account
    #Login lab account
    #click login button
        Click Element  xpath=/html/body/div[1]/div[1]/div/div[2]/div[3]/div/div/a
    #input username
        input text    xpath=//*[@id="UserName"]    ${username}
    #input password
        input text    xpath=//*[@id="Password"]    ${password}
    #click login button
        Click Element    xpath=//*[@id="sso-login"]/form/input[5]

Login Designer account
    #login designer account
    # click sign in
        Click Element    xpath=//*[@id="login-in-page"]/div/div[2]/div/form/div[2]/button
    # input username
        input text    xpath=//*[@id="UserName"]    ${edusername}
    # input password
        input text    xpath=//*[@id="Password"]    ${edpassword}
    # click login
        Click Element    xpath=//*[@id="sso-login"]/form/input[5]  

Close the pop up
#close support pop up modal
    Select Frame    xpath=//*[@id="hubspot-conversations-iframe"]
    Click Element    xpath=//*[@id="welcome-message"]
    Wait Until Element Is Visible    xpath=/html/body/div[2]/div[1]/div/span[3]/span/div/button
    Click Element    xpath=/html/body/div[2]/div[1]/div/span[3]/span/div/button
    Unselect Frame


Upload file
    Wait Until Element Is Visible    xpath=//*[@id="case-management-page"]/div[2]/div[2]/div[2]
    Choose File     xpath=//*[@id="hiddeninput-cm"]    ${CURDIR}/Biggerfile - Copy (3).zip 

Upload multiple files
    Wait Until Element Is Visible    xpath=//*[@id="case-management-page"]/div[2]/div[2]/div[2]
         Choose File     xpath=//*[@id="hiddeninput-cm"]    ${CURDIR}/multi1.jfif \n ${CURDIR}/multi2.jfif \n ${CURDIR}/multi3.jfif
    sleep    10s



Search completed case
    [Arguments]    ${completed_case}    ${download_the_design}
    Run Keyword If    '${completed_case}' == '${download_the_design}'    Click download design

Click download design
    Scroll Element Into View    xpath=//*[@id="ed-request-redesign"]
    Click Element    xpath=//*[@id="ed-download-case-attachment"] 

    
Uplaoded file should exist
    [Arguments]    ${filepath}
    Run Keyword If   ${filepath} ==    Fail    File path must be provided
    File Should Exist    ${filepath.replace("\\", "/")}

# Wait for File to Download
#     [Arguments]    ${caseuploadfile}    ${timeout}=10s
#     Wait Until Keyword Succeeds    ${timeout}    1s    Uploaded file should Exist
    
# Wait for File to Upload
#     [Arguments]    ${file_path}    ${timeout}=10s
#     Wait Until Keyword Succeeds    ${timeout}    1s    Uploaded file should Exist    ${file_path}


*** Test Cases ***

Test file should Exist   
    Go to evident staging
    Login lab account
    Wait Until Element Is Visible    xpath=//*[@id="search-input-cases"]    timeout=20s
    Close the pop up
    Upload multiple files
    #     Click Element    xpath=//*[@id="ed-completed-not-downloaded-filter"]
    #     Wait Until Element Is Enabled    xpath=//*[@id="search-input-cases"]
    #     Input Text    xpath=//*[@id="search-input-cases"]    ${completedcase1}
    #     Sleep    2s    page load
    #         Click Element    xpath=//*[@id="search_cont"]/div[1]/button 
    
    # Search completed case    ${completedcase1}    ${downloadcaseno1}
    # Click download design
    Sleep    25s


