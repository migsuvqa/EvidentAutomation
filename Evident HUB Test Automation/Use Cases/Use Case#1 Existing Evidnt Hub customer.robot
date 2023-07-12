*** Settings ***
Documentation    Evident design end to end automation
Library    Selenium2Library
Library    DateTime
Library    copy.py
Library    clipboard
Library    String

*** Variables ***
${browser}    edge
${Url}    https://stagingevidentdigital.xyz/
${newemail}    automate606v10@getnada.com
${patientemail}    autopatient615@getnada.com
${patientfname}    patient
${patientlname}    automated 615
${practicename}    For automation
${username}    dentistautomation@getnada.com
${password}    P@ssword1
${edusername}    design@getnada.com
${edpassword}    password1

*** Keywords ***
Go to evident staging
    Open browser    ${Url}    ${browser}
    Set Browser Implicit Wait    25s
    Maximize Browser Window

*** Test Cases ***
Evident staging index
    Go to evident staging

Proceed to login page
    Click Element   xpath=/html/body/div[1]/div[1]/div/div[2]/div[3]/div/div/a

    #credentials
    input text    xpath=//*[@id="UserName"]    ${username}
    input text    xpath=//*[@id="Password"]    ${password}
    Click Element    xpath=//*[@id="sso-login"]/form/input[5]

Hub page
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div[1]/div/header/div/div[2]/a[2]/h6
    #patient menu
    Click Element    xpath=//*[@id="root"]/div[1]/div/header/div/div[2]/a[2]/h6
    #add new patiend
    Click Element    xpath=//*[@id="root"]/div[1]/div[1]/div/div[2]/div/div[1]/div[2]/button
    #first name
    Wait Until Element Is Visible    xpath=//*[@id="firstName"]
    Input Text    xpath=//*[@id="firstName"]    ${patientfname}
    Input Text    xpath=//*[@id="lastName"]    ${patientlname}
    Input Text    xpath=//*[@id="mobile"]    78945123
    Input Text    xpath=//*[@id="patientCode"]    Auto01
    #birthday
    Input Text    xpath=//*[@id=":ra:"]    01012000
    #email address
    Input Text    xpath=//*[@id="email"]    ${patientemail}  
    #submit patient
    Click Element    xpath=/html/body/div[3]/div[3]/div/div/form/div[3]/div/button[2]

    #order treatment
    #click add treatment
    Click Element    xpath=//*[@id="root"]/div[1]/div[1]/div/div[2]/div/div/div[2]/a[2]
    #order DX
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div[1]/div/div[1]/div[2]/div[3]/div[1]/div[2]/div/div[2]/div/div[2]/button[2]
    Click Element   xpath=//*[@id="root"]/div[1]/div/div[1]/div[2]/div[3]/div[1]/div[2]/div/div[2]/div/div[2]/button[2]
    
    #proceed
    Wait Until Element Is Visible    xpath=/html/body/div[3]/div[3]/div/div[4]/button[1]
    Click Element    xpath=/html/body/div[3]/div[3]/div/div[4]/button[1]

    #Patient details
    #Lastname
    #Input Text    xpath=//*[@id="last-name"]    automated 606v12
    #email address
    #Input Text    xpath=//*[@id="email"]    patientemail606v15@getnada.com
    #firstname
    #Input Text    xpath=//*[@id="first-name"]    patient
    #tooth chart
    Click Element    xpath=//*[@id="Tooth7-23488d93-6b80-4852-a2cf-7a52fa7b2082"]
    Click Element    xpath=//*[@id="Tooth8-23488d93-6b80-4852-a2cf-7a52fa7b2082"]
    Click Element    xpath=//*[@id="Tooth9-23488d93-6b80-4852-a2cf-7a52fa7b2082"]
    #tooth chart treatmetn plan
    Wait Until Element Is Enabled    xpath=//*[@id="root"]/div[1]/div/div[2]/div[2]/div[3]/div[2]/div/div/div[1]/div/div[2]/div[2]/div/div/div[1]/div[2]/div[1]/div
    Click Element    xpath=//*[@id="root"]/div[1]/div/div[2]/div[2]/div[3]/div[2]/div/div/div[1]/div/div[2]/div[2]/div/div/div[1]/div[2]/div[1]/div
    #add selected
    Click Element    xpath=//*[@id="root"]/div[1]/div/div[2]/div[2]/div[3]/div[2]/div/div/div[1]/div/div[2]/div[2]/div/div/div[3]/button
    #additive wax-up?
    Click Element    xpath=//*[@id="root"]/div[1]/div/div[2]/div[2]/div[3]/div[2]/div/div/div[2]/div/div[2]/div[1]
    #Misaligned teeth correction
    Click Element    xpath=//*[@id="root"]/div[1]/div/div[2]/div[2]/div[3]/div[2]/div/div/div[3]/div/div[2]/div[1]
    #Gingival Contourin
    Click Element    xpath=//*[@id="root"]/div[1]/div/div[2]/div[2]/div[3]/div[2]/div/div/div[4]/div/div[2]/div[1]
    #Vertical Dimension for Occlusion
    Click Element    xpath=//*[@id="root"]/div[1]/div/div[2]/div[2]/div[3]/div[2]/div/div/div[5]/div/div[2]/div[1]
    #Max Preferred Length of Centrals
    Click Element    xpath=//*[@id="root"]/div[1]/div/div[2]/div[2]/div[3]/div[2]/div/div/div[6]/div/div[2]/div[1]
    #smile type
    Click Element    xpath=//*[@id="root"]/div[1]/div/div[2]/div[2]/div[3]/div[2]/div/div/div[7]/div/div[2]/div[1]/img
    #Are you fabricating In-house?
    Click Element    xpath=//*[@id="root"]/div[1]/div/div[2]/div[2]/div[3]/div[2]/div/div/div[9]/div/div[2]/div[2]
    #Do you have an existing Smile Mock-up or Dentofacial Analysis case to follow?
    Click Element    xpath=//*[@id="root"]/div[1]/div/div[2]/div[2]/div[3]/div[2]/div/div/div[10]/div/div[2]/div[2]
    #Do you want to add a Prep Guide? (Additional $50)
    Click Element    xpath=//*[@id="root"]/div[1]/div/div[2]/div[2]/div[3]/div[2]/div/div/div[11]/div/div[2]/div[2]
    #rx notes
    Input Text    xpath=/html/body/div[1]/div[1]/div/div[2]/div[2]/div[3]/div[2]/div/div/div[12]/div[2]/div/div/textarea[1]    Rx notes
    
    #Required files
    #IOS
    Choose File    xpath=//*[@id="root"]/div[1]/div/div[2]/div[2]/div[4]/div[2]/div[2]/div[1]/div[2]/div[1]/div/div/input    ${CURDIR}/Anasel.stl
    #Additional
    Choose File    xpath=/html/body/div[1]/div[1]/div/div[2]/div[2]/div[4]/div[2]/div[2]/div[2]/div[2]/div[1]/div/div/input    ${CURDIR}/download.jfif
    
    #close support pop up modal
    Select Frame    xpath=//*[@id="hubspot-conversations-iframe"]
    Click Element    xpath=//*[@id="welcome-message"]
    Wait Until Element Is Visible    xpath=/html/body/div[2]/div[1]/div/span[3]/span/div/button
    Click Element    xpath=/html/body/div[2]/div[1]/div/span[3]/span/div/button
    Unselect Frame

    #proceed
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div[1]/div/div[2]/div[2]/div[5]/div[2]/div/button[2]
    Scroll Element Into View    xpath=//*[@id="root"]/div[1]/div/div[2]/div[2]/div[5]/div[2]/div/button[2]
    Sleep    5s
    Click Element    xpath=//*[@id="root"]/div[1]/div/div[2]/div[2]/div[5]/div[2]/div/button[2]

    #payment details for new accounts.
    #Input Text    xpath=//*[@id=":r1q:"]    4770706467047892
    #Input Text    xpath=//*[@id="accountName"]    Automate Card
    #Input Text    xpath=//*[@id=":r1s:"]    12
    #Input Text    xpath=//*[@id=":r1t:"]    2031
    #Input Text    xpath=//*[@id=":r1u:"]    123
    #Input Text    xpath=//*[@id="contactDetails"]    Automated Contact Details

    #proceed
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div[1]/div/div[1]/div[2]/div[4]/div[2]/div/div/div/button[2]
    Scroll Element Into View    xpath=//*[@id="root"]/div[1]/div/div[1]/div[2]/div[4]/div[2]/div/div/div/button[2]
    Click Element    xpath=//*[@id="root"]/div[1]/div/div[1]/div[2]/div[4]/div[2]/div/div/div/button[2]

    #submit order
    Wait Until Element Is Visible    xpath=/html/body/div[3]/div[3]/div/div[4]/button[1]
    Click Element    xpath=/html/body/div[3]/div[3]/div/div[4]/button[1]

    #Close success message
    Wait Until Element Is Visible    xpath=/html/body/div[3]/div[3]/div/div[1]/button
    Click Element    xpath=/html/body/div[3]/div[3]/div/div[1]/button

    #copy case number
    ${getcasenumber}    Get Text    xpath=//*[@id="root"]/div[1]/div/div[1]/div[2]/div[2]/div[2]
    ${casenumber}    Strip String    ${getcasenumber}    both    No. 
 #${casenumber}    str(function.get_text(//*[@id="root"]/div[1]/div/div[1]/div[2]/div[2]/div[2])).split('')[-1]
    Log To Console    ${casenumber}

    #log out account
    Click Element    xpath=//*[@id="root"]/div[1]/div/header/div/div[3]/div[1]/button
    Wait Until Element Is Visible    xpath=//*[@id="popper"]/div/button
    Click Element    xpath=//*[@id="popper"]/div/button
    Sleep    5s

    #Login Designer to evident Design
    
    #open evident design page
    Go To    https://preprodevidentdesign.azurewebsites.net/Account/Login
    Log Title
    

    #login designer account
    Wait Until Element Is Visible    xpath=//*[@id="login-in-page"]/div/div[2]/div/form/div[2]/button
    Click Element    xpath=//*[@id="login-in-page"]/div/div[2]/div/form/div[2]/button
    input text    xpath=//*[@id="UserName"]    ${edusername}
    input text    xpath=//*[@id="Password"]    ${edpassword}
    Click Element    xpath=//*[@id="sso-login"]/form/input[5]

    #find the case number
    ${checkcaseno}    Copy.Copy   ${casenumber}
    Input Text    xpath=/html/body/header/div/nav/div/div[4]/div/div[2]/input   Dentist Forautomation
    Input Text    xpath=//*[@id="filter-input-cases-no"]    ${checkcaseno}

    #assign case
    #check if case number is correct
    ${correctcase}    Get Text    xpath=//*[@id="checkCases_No_601298121"]/td[2]/div[1]/p[1]
    Should Be Equal As Strings    ${checkcaseno}    ${correctcase}    ignore_case=${True}    strip_spaces=${True}    
    Click Element    xpath=//*[@id="uia-btn-assigntome-0"]

    #Download file
    Click Element    xpath=//*[@id="uia-btn-assigned"]/div/div[2]
    Wait Until Element Is Enabled    xpath=//*[@id="filter-input-cases-no"]
    Input Text    xpath=//*[@id="filter-input-cases-no"]    ${checkcaseno}
    Wait Until Element Is Visible    xpath=/html/body/ui-view/ui-view/designer-my-cases/div/div/div[2]/div[1]/table/tbody/tr[1]/td[10]/div[2]/div/div[3]/button   
    Click Element    xpath=/html/body/ui-view/ui-view/designer-my-cases/div/div/div[2]/div[1]/table/tbody/tr[1]/td[10]/div[2]/div/div[3]/button
    Sleep    10s    wait to download files

    #Submit file   
    Wait Until Element Is Visible    xpath=/html/body/ui-view/ui-view/designer-my-cases/div/div/div[2]/div[1]/table/tbody/tr[1]/td[10]/div[3]/div/div[1]/button
    Click Element    xpath=/html/body/ui-view/ui-view/designer-my-cases/div/div/div[2]/div[1]/table/tbody/tr[1]/td[10]/div[3]/div/div[1]/button
    Choose file    xpath=//*[@id="hiddeninput-cm"]    ${CURDIR}/Submitfile.zip
    Sleep    5s 
    Click Element    xpath=//*[@id="uia-btn-submit"]
    Sleep    5s
    Click Element    xpath=//*[@id="submit-design-modal"]/div[1]/img

    #Check case on completed
    Reload Page
    Click Element    xpath=//*[@id="uia-btn-completed"]
    Sleep    3s
    Click Element    xpath=//*[@id="uia-btn-completed"]
    Input Text    xpath=//*[@id="search-lab-input uia-textinput-labfilter"]    Dentist Forautomation
    Input Text    xpath=//*[@id="filter-input-cases-no"]    ${checkcaseno}
    Sleep    3s    wait for the page to load
    ${completedcase}    Get Text    xpath=/html/body/ui-view/ui-view/designer-my-cases/div/div/div[2]/div[1]/table/tbody/tr[1]/td[2]/div[1]/p[1]
    ${caseiscompleted}    Should Be Equal    ${checkcaseno}    ${completedcase}    case no submitted and completed is equal

    #logout designer account
    Wait Until Element Is Visible    xpath=//*[@id="single-button"]
    Click Element    xpath=//*[@id="single-button"]
    Click Element    xpath=//*[@id="ed-logout"]


    #navigate to main home page
    Go To    https://stagingevidentdigital.xyz/

    #relogin hub account
    Wait Until Element Is Visible    xpath=/html/body/div[1]/div[1]/div/div[2]/div[3]/div/div/a
    Click Element   xpath=/html/body/div[1]/div[1]/div/div[2]/div[3]/div/div/a

    #credentials
    input text    xpath=//*[@id="UserName"]    ${username}
    input text    xpath=//*[@id="Password"]    ${password}
    Click Element    xpath=//*[@id="sso-login"]/form/input[5]

    #check case

















    sleep    20s