

*** Settings ***
Documentation    Evident design end to end automation
Library    Selenium2Library
Library    DateTime
Library    copy.py
Library    clipboard
Library    Collections
Library    String
Library    XML
Library    Telnet
Library    OperatingSystem
Library    C:/Users/Nimbyx/Documents/Robot - framework/Evident Automation/Evident Design Test Automation/BeautifulSoupLibrary.py
# Library    Globalkeywords
Resource    C:/Users/Nimbyx/Documents/Robot - framework/Evident Automation/Evident Design Test Automation/Globalkeywords.robot   



*** Variables ***
${browser}    edge
${Url}    https://stagingevidentdigital.xyz/
${username}    labtestautomation@getnada.com
${password}    P@ssword1
${labname}    Automation lab
${getcasetime}    Get Text    xpath=/html/body/ui-view/ui-view/lab-case-management/div/div[2]/div[5]/div[1]/table/tbody/tr[1]/td[4]
${edusername}    design@getnada.com
${edpassword}    password1
${newpassword}    nP@ssword1
${prodcat}    3    #dont enter any value
${prodcatname}    crown-and-bridge    #check the available values on Product ordering - Product Category name             
${prodno}    0       #check the available values on Product ordering - Product number





*** Test Cases ***
Test scenario #1 Lab Submit Single Case
    #This test scenario also includes test scenario #11
    Go to evident staging
    Login lab account
    Upload file
    close support pop up modal
    Fill up case with favorite
    Confirm Submit
    Close and check if Case is created
        ${casenumber}    Get Text    xpath=/html/body/ui-view/ui-view/lab-case-management/div/div[2]/div[5]/div[1]/table/tbody/tr[1]/td[2]/div[1]/p[1]
        ${checkcaseno}    Copy.Copy   ${casenumber}
        Log To Console    ${checkcaseno}
    Log out lab account   
    Login Designer account  
    Process the case number    ${checkcaseno}    ${labname}
    Logout designer account
    Relogin lab account
    Search the completed case    ${casenumber}
    download the design file    ${casenumber}
    Check if element is removed from Not yet completed    ${casenumber}
    Log To Console    ${casenumber}- Done End to End Automation of Test Scenario 1


Test Scenario #2 Lab Submit multiple cases
    #This test scenario also includes test scenario #11
    Go to evident staging
    Login lab account
    Wait Until Element Is Visible    xpath=//*[@id="search-input-cases"]    timeout=200s
    Upload multiple files
    close support pop up modal
    submit multiple files
    Check and copy submitted Cases
    #Scroll Element Into View    xpath=/html/body/ui-view/ui-view/lab-case-management/div/div[2]/div[5]/div[1]/table/tbody/tr[1]/td[2]/div[1]/p[1]
        ${casenumber1}    Get Text    xpath=/html/body/ui-view/ui-view/lab-case-management/div/div[2]/div[5]/div[1]/table/tbody/tr[1]/td[2]/div[1]/p[1]
        ${casenumber2}    Get Text    xpath=/html/body/ui-view/ui-view/lab-case-management/div/div[2]/div[5]/div[1]/table/tbody/tr[2]/td[2]/div[1]/p[1]
        ${casenumber3}    Get Text    xpath=/html/body/ui-view/ui-view/lab-case-management/div/div[2]/div[5]/div[1]/table/tbody/tr[3]/td[2]/div[1]/p[1]
        ${checkcaseno1}    Copy.Copy   ${casenumber1}
        ${checkcaseno2}    Copy.Copy    ${casenumber2}
        ${checkcaseno3}    Copy.Copy    ${casenumber3} 
        Log To Console    ${checkcaseno1} ${checkcaseno2} ${checkcaseno3}    These are the case numbers
    Log out lab account
    login designer account
    Process the multiple cases submitted    ${checkcaseno1}    ${checkcaseno2}    ${checkcaseno3}    ${labname}   
    logout designer account
    Relogin lab account
    Search and check if the cases are completed    ${casenumber1}    ${casenumber2}    ${casenumber3}
    download the design file of multiple files completed    ${casenumber1}    ${casenumber2}    ${casenumber3}
    Check if the cases are removed from not yet downloaded    ${casenumber1}    ${casenumber2}    ${casenumber3}



    Sleep    10s


Test Scenario #3 #4
     Go to Preprod Admin Hub
    Login admin account
    Find the lab and add user
    Go to new user ssu
    self sign up the user
    Go to evident staging    
    Login new lab user account
    Upload file
    close support pop up modal
    Fill up case with favorite
    Confirm Submit
    Close and check if Case is created
        ${casenumber}    Get Text    xpath=/html/body/ui-view/ui-view/lab-case-management/div/div[2]/div[5]/div[1]/table/tbody/tr[1]/td[2]/div[1]/p[1]
        ${checkcaseno}    Copy.Copy   ${casenumber}
        Log To Console    ${checkcaseno}
    Log out lab account   
    Login Designer account  
    Process the case number    ${checkcaseno}    ${labname}
    Logout designer account
    Relogin new lab user account
    Search the completed case    ${casenumber}
    download the design file    ${casenumber}
    Check if element is removed from Not yet completed    ${casenumber}
    Log To Console    ${casenumber}- Done End to End Automation of Test Scenario 3
    Go to evident staging
    Login new lab user account 
    Wait Until Element Is Visible    xpath=//*[@id="search-input-cases"]    timeout=200s
    Upload multiple files
    close support pop up modal
    submit multiple files
    Check and copy submitted Cases
    #Scroll Element Into View    xpath=/html/body/ui-view/ui-view/lab-case-management/div/div[2]/div[5]/div[1]/table/tbody/tr[1]/td[2]/div[1]/p[1]
        ${casenumber1}    Get Text    xpath=/html/body/ui-view/ui-view/lab-case-management/div/div[2]/div[5]/div[1]/table/tbody/tr[1]/td[2]/div[1]/p[1]
        ${casenumber2}    Get Text    xpath=/html/body/ui-view/ui-view/lab-case-management/div/div[2]/div[5]/div[1]/table/tbody/tr[2]/td[2]/div[1]/p[1]
        ${casenumber3}    Get Text    xpath=/html/body/ui-view/ui-view/lab-case-management/div/div[2]/div[5]/div[1]/table/tbody/tr[3]/td[2]/div[1]/p[1]
        ${checkcaseno1}    Copy.Copy   ${casenumber1}
        ${checkcaseno2}    Copy.Copy    ${casenumber2}
        ${checkcaseno3}    Copy.Copy    ${casenumber3} 
        Log To Console    ${checkcaseno1} ${checkcaseno2} ${checkcaseno3}    These are the case numbers
    Log out lab account
    login designer account
    Process the multiple cases submitted    ${checkcaseno1}    ${checkcaseno2}    ${checkcaseno3}    ${labname}   
    logout designer account
    Relogin new lab user account
    Search and check if the cases are completed    ${casenumber1}    ${casenumber2}    ${casenumber3}
    download the design file of multiple files completed    ${casenumber1}    ${casenumber2}    ${casenumber3}
    Check if the cases are removed from not yet downloaded    ${casenumber1}    ${casenumber2}    ${casenumber3}
    Log To Console    ${casenumber1}, ${casenumber2}, ${casenumber3}- Done End to End Automation of Test Scenario 4

Test Scenario #9 #10 Change Password 
    Go to evident staging
    Login lab account
    change password
    Login using new password
    Log To Console    Done End to End Automation of Test Scenario 9 and 10

Test Scenario #5 #6

    Go to evident staging
    Create a Lab account
    Upload file
    Setup payment details
    close support pop up modal
    Fill up case with no favorite
    Confirm Submit
    Close and check if Case is created
        ${casenumber}    Get Text    xpath=/html/body/ui-view/ui-view/lab-case-management/div/div[2]/div[5]/div[1]/table/tbody/tr[1]/td[2]/div[1]/p[1]
        ${checkcaseno}    Copy.Copy   ${casenumber}
        Log To Console    ${checkcaseno}
    Log out lab account   
    Login Designer account  
    Process the case number    ${checkcaseno}    ${newlabname}
    Logout designer account
    Relogin new lab account
    Search the completed case    ${casenumber}
    download the design file    ${casenumber}
    Check if element is removed from Not yet completed    ${casenumber}
    Log To Console    ${casenumber}- Done End to End Automation of Test Scenario 5
    #upload multiple files
    Upload multiple files
    submit multiple files
    Check and copy submitted Cases
    Click Element    xpath=//*[@id="ed-all-cases-filter"]
    #Scroll Element Into View    xpath=/html/body/ui-view/ui-view/lab-case-management/div/div[2]/div[5]/div[1]/table/tbody/tr[1]/td[2]/div[1]/p[1]
        ${casenumber1}    Get Text    xpath=/html/body/ui-view/ui-view/lab-case-management/div/div[2]/div[5]/div[1]/table/tbody/tr[1]/td[2]/div[1]/p[1]
        ${casenumber2}    Get Text    xpath=/html/body/ui-view/ui-view/lab-case-management/div/div[2]/div[5]/div[1]/table/tbody/tr[2]/td[2]/div[1]/p[1]
        ${casenumber3}    Get Text    xpath=/html/body/ui-view/ui-view/lab-case-management/div/div[2]/div[5]/div[1]/table/tbody/tr[3]/td[2]/div[1]/p[1]
        ${checkcaseno1}    Copy.Copy   ${casenumber1}
        ${checkcaseno2}    Copy.Copy    ${casenumber2}
        ${checkcaseno3}    Copy.Copy    ${casenumber3} 
        Log To Console    ${checkcaseno1} ${checkcaseno2} ${checkcaseno3}    These are the case numbers
    Log out lab account
    login designer account
    Process the multiple cases submitted    ${checkcaseno1}    ${checkcaseno2}    ${checkcaseno3}    ${newlabname}   
    logout designer account
    Relogin new lab account
    Search and check if the cases are completed    ${casenumber1}    ${casenumber2}    ${casenumber3}
    download the design file of multiple files completed    ${casenumber1}    ${casenumber2}    ${casenumber3}
    Check if the cases are removed from not yet downloaded    ${casenumber1}    ${casenumber2}    ${casenumber3}
    Log To Console    ${casenumber}- Done End to End Automation of Test Scenario 6

# testing lang 
#     Go to evident staging
#     Login lab account
#     Upload file
#     close support pop up modal
#     #Fill up case with favorites
#                 ${elements}    Get WebElements    xpath=//*[@id="uia-draft-file-table-rows"]
#                 ${length}    Get Length    ${elements}
#                 ${last_index}    Evaluate    ${length} - 1
#                 Set Global Variable    ${length}
#                     IF    ${last_index} == 0
#                         ${thetr}    Set Variable    ${EMPTY}
#                     ELSE
#                         ${thetr}    Set Variable    [${length}]
#                     END
#                 Log To Console    ${thetr} this is the log
#                 #click design type
#                 Click Element    xpath=//*[@id="select-design-type-${last_index}-0"]
#                 #select from design type drop down
#                     #Evaluating the prodcat number based on the defined product category name
#                 IF    "${prodcatname}" == "crown-and-bridge"
#                     ${prodcat}    Set Variable    2 
#                     ${prodcatflow}    Set Variable    ${prodcatname}
#                 ELSE
#                     IF    "${prodcatname}" == "Models"
#                         ${prodcat}    Set Variable    3
#                         ${prodcatflow}    Set Variable    ${prodcatname}
#                     ELSE
#                         IF    "${prodcatname}" == "implant-restoration"
#                             ${prodcat}    Set Variable    4
#                             ${prodcatflow}    Set Variable    ${prodcatname}
#                         ELSE
#                             IF    "${prodcatname}" == "aligners"
#                                 ${prodcat}    Set Variable    6
#                                 ${prodcatflow}    Set Variable    ${prodcatname}
#                             ELSE
#                                 IF    "${prodcatname}" == "removables"
#                                     ${prodcat}    Set Variable    7
#                                     ${prodcatflow}    Set Variable    ${prodcatname}
#                                 ELSE
#                                     IF    "${prodcatname}" == "snapon-smile"
#                                         ${prodcat}    Set Variable    8
#                                         ${prodcatflow}    Set Variable    ${prodcatname}
#                                         ${prodcatflow}    Set Variable    ${prodcatname}
#                                     ELSE
#                                         IF    "${prodcatname}" == "dentofacial-digital"
#                                             ${prodcat}    Set Variable    9
#                                             ${prodcatflow}    Set Variable    ${prodcatname}
#                                         ELSE
#                                             IF    "${prodcatname}" == "other"
#                                                 ${prodcat}    Set Variable    10
#                                                 ${prodcatflow}    Set Variable    ${prodcatname}
#                                             ELSE
#                                                 IF    "${prodcatname}" == "Surgical Planning"
#                                                     ${prodcat}    Set Variable    5
#                                                     ${prodcatname}    Set Variable    implant-restoration
#                                                     ${productcatarray}    Set Variable    [2]
#                                                     ${prodcatflow}    Set Variable    Surgical Planning
#                                                 ELSE
#                                                     Close All Browsers
#                                                 END
#                                             END
                                            
#                                         END
#                                     END
#                                 END
#                             END
#                         END
#                     END
#                 END
#                 Log To Console    ${prodcat} This is the product number based on the defined product category name
#                 #Assigning flow based on the product selected
#                 ${inthelist}    Run keyword and return status    Should Be True    '${prodcatflow}' in ${prodcatlistunits}
#                 Log To Console    ${inthelist}
#                 IF    ${inthelist} == ${True}
#                     Click Element    xpath=/html/body/div[1]/div/div/create-case-modal/div/div[1]/div[5]/table/tbody/tr[${length}]/td[3]/table/tbody/tr/td[2]/div[2]/div/div[${prodcat}]/p
#                     #click the check box of the selected design type
#                     Click Element    xpath=(//*[@id="checkbox-${prodcatname}-${last_index}-0-${prodno}"]/div[2])${productcatarray}
#                     #click the instruction table to remove the design type dropdown modal
#                     Click Element    xpath=//*[@id="instruction-${last_index}"]
#                     #input number of units
#                     Input Text    xpath=//*[@id="units-${last_index}-0"]    2
#                     #select position
#                     Select From List By Label   xpath=//*[@id="position-${last_index}-0"]    Anterior
#                     #select design software
#                     Select From List By Label    xpath=//*[@id="scannerType-${last_index}"]    3Shape
#                     #input instructions
#                     Input Text    xpath=//*[@id="instruction-${last_index}"]    test automation
#                     #click submit
#                     Sleep    1s
#                     Confirm Submit
#                 ELSE
#                     Click Element    xpath=/html/body/div[1]/div/div/create-case-modal/div/div[1]/div[5]/table/tbody/tr[${length}]/td[3]/table/tbody/tr/td[2]/div[2]/div/div[${prodcat}]/p
#                     #click the check box of the selected design type
#                     Click Element    xpath=(//*[@id="checkbox-${prodcatname}-${last_index}-0-${prodno}"]/div[2])${productcatarray}
#                     Confirm Submit
#                 END

# Isa pang test

#     Go to evident staging
#     Login lab account
#     # Scroll Element Into View    xpath=//*[@id="ed-download-case-attachment"]
    
#     Click Element    xpath=//*[@id="checkCases_No_871299065"]/td[7]/div[3]/div[2]/div[1]/button[contains(text(), 'Download file(s)')]
#     Wait Until Element Is Visible    xpath=//*[@id="checkCases_No_871299065"]/td[7]/div[3]/div[2]/div[1]/button[contains(text(), 'Download again')]
#     Scroll Element Into View    xpath=//*[@id="ed-completed-not-downloaded-filter"] 
#     Click Element    xpath=//*[@id="ed-completed-not-downloaded-filter"]   
#     ${removed}    Run Keyword And Return Status    Page Should Contain Element    xpath=//*[@id="checkCases_No_871299065"]/td[2]    timeout=10s
#     Should Not Be True    ${removed}
