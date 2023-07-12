*** Settings ***
Documentation    Evident design end to end automation
Library    Selenium2Library
Library    DateTime
Library    copy.py
Library    clipboard

*** Variables ***
${browser}    edge
${Url}    https://stagingevidentdigital.xyz/
${newemail}    automate606v2@getnada.com
${patientemail}    patientemailv1@getnada.com
${practicename}    Automated Practice Name 606
${file1}    C:\Users\Nimbyx\Desktop\file for uploading\
${curtime}    Get Current Date    result_format=%H:%M
${getcasetime}    Get Text    xpath=/html/body/ui-view/ui-view/lab-case-management/div/div[2]/div[5]/div[1]/table/tbody/tr[1]/td[4]
${edusername}    design@getnada.com
${edpassword}    password1

*** Keywords ***
Go to evident staging
    Open browser    ${Url}    ${browser}
    Set Browser Implicit Wait    20s
    Maximize Browser Window


*** Test Cases ***
Evident staging index
    Go to evident staging

Proceed to login page
    Click Element   xpath=/html/body/div[1]/div[1]/div/div[2]/div[3]/div/div/a

Proceed to Create account
    Click Element    xpath=//*[@id="sso-login"]/p[1]/span/a

Create account 1st page
    Input Text    xpath=//*[@id="create-account-form"]/div/input[1]    Automate
    Input Text    xpath=//*[@id="create-account-form"]/div/input[2]    Testing
    Input text    xpath=//*[@id="create-account-form"]/div/input[3]    ${newemail}
    Input Text    xpath=//*[@id="create-account-form"]/div/input[4]    AutoJob
    Input text    xpath=//*[@id="create-account-form"]/div/input[5]    78945612
    Select From List By Value    xpath=//*[@id="create-account-form"]/div/select    dentist
    Input Text    xpath=//*[@id="psw"]    P@ssword1
    Input text    xpath=//*[@id="psw2"]    P@ssword1

    Scroll Element Into View    xpath=//*[@id="list1"]/span
    Click Element    xpath=/html/body/div[2]/div/div/div[2]/div/div/div/div
    Click Element    xpath=//*[@id="list1"]/span
    Select Checkbox    xpath=//*[@id="interested_products_cad_design"]
    Select Checkbox    xpath=//*[@id="interested_products_cad_lms"]
    Select Checkbox    xpath=//*[@id="interested_products_cad_sfs"]
    Select Checkbox    xpath=//*[@id="interested_products_cad_wfa"]
    Select Checkbox    xpath=//*[@id="interested_products_cad_ser"]

    select from list by value    xpath=//*[@id="heard-about-us"]    Facebook

    Select Checkbox    xpath=//*[@id="accept-privacy-terms"]
Submit details
    Click Element   xpath=//*[@id="create-account-form"]/button

Create account 2nd page

    #Please add your practice information to complete your profile
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div[1]/div[1]/div/form/div[1]/div[2]/div[1]/div[1]/div[2]/input
    #practicename 
    input text    xpath=//*[@id="root"]/div[1]/div[1]/div/form/div[1]/div[2]/div[1]/div[1]/div[2]/input    ${practicename}
    #address 1
    Input Text    xpath=//*[@id="root"]/div[1]/div[1]/div/form/div[1]/div[2]/div[1]/div[2]/div[2]/input    Address line 1
    #address 2
    Input Text    xpath=//*[@id="root"]/div[1]/div[1]/div/form/div[1]/div[2]/div[1]/div[3]/div[2]/input    Address line 2
    #city
    Input text    xpath=//*[@id="root"]/div[1]/div[1]/div/form/div[1]/div[2]/div[1]/div[4]/div[2]/input    City
    #country
    Click Element    xpath=//*[@id="address.Country-select-input"]
    Wait Until Element Is Visible    xpath=//*[@id="menu-"]/div[3]/ul/li[1]
    Click Element    xpath=//*[@id="menu-"]/div[3]/ul/li[1]
    #state
    Wait Until Element Is Visible    xpath=//*[@id="address.State-select-input"]
    Click Element    xpath=//*[@id="address.State-select-input"]
    Wait Until Element Is Visible    xpath=//*[@id="menu-"]/div[3]/ul/li[1]
    Click Element    xpath=//*[@id="menu-"]/div[3]/ul/li[1]
    #postal
    Input Text    xpath=//*[@id="root"]/div[1]/div[1]/div/form/div[1]/div[2]/div[1]/div[7]/div[2]/input    A1A 1A1
    #phone number 
    Input text    xpath=//*[@id="root"]/div[1]/div[1]/div/form/div[1]/div[2]/div[1]/div[8]/div[2]/input    78945612

    #Select primary equipment that your practice owns.

    Scroll Element Into View    xpath=//*[@id="root"]/div[1]/div[1]/div/form/div[2]/button

    Click Element    xpath=//*[@id="root"]/div[1]/div[1]/div/form/div[1]/div[2]/div[2]/div/div[2]/div[1]/label/span[1]/input
    Click Element    xpath=//*[@id="equipment.Ios-select-input"]
    Click Element    xpath=//*[@id="menu-"]/div[3]/ul/li[1]

    #save
    Click Element    xpath=//*[@id="root"]/div[1]/div[1]/div/form/div[2]/button


Hub page
    #patient menu
    Click Element    xpath=//*[@id="root"]/div[1]/div/header/div/div[2]/a[2]/h6
    #add new patiend
    Click Element    xpath=//*[@id="root"]/div[1]/div[1]/div/div[2]/div/div[1]/div[2]/button
    #first name
    Wait Until Element Is Visible    xpath=//*[@id="firstName"]
    Input Text    xpath=//*[@id="firstName"]    automated
    Input Text    xpath=//*[@id="lastName"]    Patient
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
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div[1]/div[1]/div/div[2]/div/div/div[2]/a[2]
    Click Element    xpath=//*[@id="root"]/div[1]/div[1]/div/div[2]/div/div/div[2]/a[2]
    #order DX
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div[1]/div/div[1]/div[2]/div[3]/div[1]/div[2]/div/div[2]/div/div[2]/button[2]
    Click Element   xpath=//*[@id="root"]/div[1]/div/div[1]/div[2]/div[3]/div[1]/div[2]/div/div[2]/div/div[2]/button[2]
    #proceed
    Wait Until Element Is Visible    xpath=/html/body/div[3]/div[3]/div/div[4]/button[1]
    Click Element    xpath=/html/body/div[3]/div[3]/div/div[4]/button[1]

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
    Choose File    xpath=//*[@id="root"]/div[1]/div/div[2]/div[2]/div[4]/div[2]/div[2]/div[2]/div[2]/div[1]/div/div/input    ${CURDIR}/download.jfif

    #proceed
    Click Element    xpath=//*[@id="root"]/div[1]/div/div[2]/div[2]/div[5]/div[2]/div/button[2]/p/span

    #payment details
    Input Text    xpath=//*[@id=":r1q:"]    4770706467047892
    Input Text    xpath=//*[@id="accountName"]    Automate Card
    Input Text    xpath=//*[@id=":r1s:"]    12
    Input Text    xpath=//*[@id=":r1t:"]    2031
    Input Text    xpath=//*[@id=":r1u:"]    123
    Input Text    xpath=//*[@id="contactDetails"]    Automated Contact Details

    #proceed
    Click Element    xpath=//*[@id="root"]/div[1]/div/div[1]/div[2]/div[6]/div[2]/div/div/div/button[2]

    #submit order
    Wait Until Element Is Visible    xpath=/html/body/div[3]/div[3]/div/div[4]/button[1]
    Click Element    xpath=/html/body/div[3]/div[3]/div/div[4]/button[1]

    #Close success message
    Wait Until Element Is Visible    xpath=/html/body/div[3]/div[3]/div/div[1]/button
    Click Element    xpath=/html/body/div[3]/div[3]/div/div[1]/button

    #copy case number
    ${casenumber}    Get Text    xpath=//*[@id="root"]/div[1]/div/div[1]/div[2]/div[2]/div[2]
    Log To Console    ${casenumber}









    sleep    10s