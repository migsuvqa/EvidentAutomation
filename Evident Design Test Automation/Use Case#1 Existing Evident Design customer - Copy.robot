

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
Resource    C:/Users/Nimbyx/Documents/Robot - framework/Evident Automation/Evident Design Test Automation/Globalkeywords.robot   
Resource    C:/Users/Nimbyx/Documents/Robot - framework/Evident Automation/Evident Design Test Automation/Design Variables.robot


*** Variables ***




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


Test Scenario #3 #4 Sign up new user and submit case
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

Test Scenario #5 #6 New Lab customer and submit case

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



just to log
    Go to evident staging
    Login lab account
    Upload file
    close support pop up modal
    #Setup the Products varialbe
    ${prodlength}    Get Length    ${addprodname}
    Log To Console    ${prodlength}
    IF   ${prodlength} == 2
         ${addprodname1}    Set Variable    ${addprodname}[0]
         ${addprodname2}    Set Variable    ${addprodname}[1]
    ELSE
        IF  ${prodlength} == 3
            ${addprodname1}    Set Variable    ${addprodname}[0]
            ${addprodname2}    Set Variable    ${addprodname}[1]
            ${addprodname3}    Set Variable    ${addprodname}[2]
        ELSE
            IF    ${prodlength} == 4
                ${addprodname1}    Set Variable    ${addprodname}[0]
                ${addprodname2}    Set Variable    ${addprodname}[1]
                ${addprodname3}    Set Variable    ${addprodname}[2]
                ${addprodname4}    Set Variable    ${addprodname}[3]
            ELSE
                IF    ${prodlength} == 5
                    ${addprodname1}    Set Variable    ${addprodname}[0]
                    ${addprodname2}    Set Variable    ${addprodname}[1]
                    ${addprodname3}    Set Variable    ${addprodname}[2]
                    ${addprodname4}    Set Variable    ${addprodname}[3]
                    ${addprodname5}    Set Variable    ${addprodname}[4]
                ELSE    
                    IF    ${prodlength} == 6
                        ${addprodname1}    Set Variable    ${addprodname}[0]
                        ${addprodname2}    Set Variable    ${addprodname}[1]
                        ${addprodname3}    Set Variable    ${addprodname}[2]
                        ${addprodname4}    Set Variable    ${addprodname}[3]
                        ${addprodname5}    Set Variable    ${addprodname}[4]
                        ${addprodname6}    Set Variable    ${addprodname}[5]
                    ELSE
                        IF    ${prodlength} == 7
                            ${addprodname1}    Set Variable    ${addprodname}[0]
                            ${addprodname2}    Set Variable    ${addprodname}[1]
                            ${addprodname3}    Set Variable    ${addprodname}[2]
                            ${addprodname4}    Set Variable    ${addprodname}[3]
                            ${addprodname5}    Set Variable    ${addprodname}[4]
                            ${addprodname6}    Set Variable    ${addprodname}[5]
                            ${addprodname7}    Set Variable    ${addprodname}[6]
                        ELSE
                            IF    ${prodlength} == 8
                            ${addprodname1}    Set Variable    ${addprodname}[0]
                            ${addprodname2}    Set Variable    ${addprodname}[1]
                            ${addprodname3}    Set Variable    ${addprodname}[2]
                            ${addprodname4}    Set Variable    ${addprodname}[3]
                            ${addprodname5}    Set Variable    ${addprodname}[4]
                            ${addprodname6}    Set Variable    ${addprodname}[5]
                            ${addprodname7}    Set Variable    ${addprodname}[6]
                            ${addprodname8}    Set Variable    ${addprodname}[7]
                            ELSE
                            Close All Browsers
                            END
                        END   
                    END 
                END 
            END
        END 
    END
    #1st product
    IF    ${prodlength} > 1
    ${elements}    Get WebElements    xpath=//*[@id="uia-draft-file-table-rows"]
                ${length}    Get Length    ${elements}
                ${last_index}    Evaluate    ${length} - 1
                Set Global Variable    ${length}
                    IF    ${last_index} == 0
                        ${thetr}    Set Variable    ${EMPTY}
                    ELSE
                        ${thetr}    Set Variable    [${length}]
                    END
                Log To Console    ${thetr} this is the log
                    #Evaluating the prodcat number based on the defined product category name
                    Log To Console    ${addprodname1}
                IF  "${addprodname1}" == "crown-and-bridge"
                    ${prodcat}    Set Variable    2 
                    ${prodcatflow}    Set Variable    ${addprodname1}
                    ${prodno}    Set Variable    ${prodnocnb}
                ELSE
                    IF    "${addprodname1}" == "models"
                        ${prodcat}    Set Variable    3
                        ${prodcatflow}    Set Variable    ${addprodname1}
                        ${prodno}    Set Variable    ${prodnomodel}
                    ELSE
                        IF    "${addprodname1}" == "implant-restoration"
                            ${prodcat}    Set Variable    4
                            ${prodcatflow}    Set Variable    ${addprodname1}
                            ${prodno}    Set Variable    ${prodnoimplant}
                        ELSE
                            IF    "${addprodname1}" == "aligners"
                                ${prodcat}    Set Variable    6
                                ${prodcatflow}    Set Variable    ${addprodname1}
                                ${prodno}    Set Variable    ${prodnoaligners}
                            ELSE
                                IF    "${addprodname1}" == "removables"
                                    ${prodcat}    Set Variable    7
                                    ${prodcatflow}    Set Variable    ${addprodname1}
                                    ${prodno}    Set Variable    ${prodnoremovables}
                                ELSE
                                    IF    "${addprodname1}" == "snapon-smile"
                                        ${prodcat}    Set Variable    8
                                        ${prodcatflow}    Set Variable    ${addprodname1}
                                        ${prodno}    Set Variable    ${prodnosnap}
                                    ELSE
                                        IF    "${addprodname1}" == "dentofacial-digital"
                                            ${prodcat}    Set Variable    9
                                            ${prodcatflow}    Set Variable    ${addprodname1}
                                            ${prodno}    Set Variable    ${prodnodento}
                                        ELSE
                                            IF    "${addprodname1}" == "other"
                                                ${prodcat}    Set Variable    10
                                                ${prodcatflow}    Set Variable    ${addprodname1}
                                                ${prodno}    Set Variable    ${prodnoother}
                                            ELSE
                                                IF    "${addprodname1}" == "Surgical Planning"
                                                    ${prodcat}    Set Variable    5
                                                    ${addprodname1}    Set Variable    implant-restoration
                                                    ${productcatarray}    Set Variable    [2]
                                                    ${prodcatflow}    Set Variable    Surgical Planning
                                                ELSE
                                                    Log To Console    First Product is incorrect
                                                    Close All Browsers
                                                END
                                            END
                                            
                                        END
                                    END
                                END
                            END
                        END
                    END
                END
                
                Log To Console    ${prodcat} This is the product number based on the defined product category name
                #Assigning flow based on the product selected
                ${inthelist}    Run keyword and return status    Should Be True    '${prodcatflow}' in ${prodcatlistunits}
                Log To Console    ${inthelist}
                ${addprodcat}    Set Variable    ${prodcat}
                IF    ${inthelist} == ${True}
                    Click Element    xpath=//*[@id="select-design-type-${last_index}-0"]
                    Click Element    xpath=/html/body/div[1]/div/div/create-case-modal/div/div[1]/div[5]/table/tbody/tr[${length}]/td[3]/table/tbody/tr/td[2]/div[2]/div/div[${addprodcat}]/p
                    #click the check box of the selected design type
                    Click Element    xpath=(//*[@id="checkbox-${prodcatflow}-${last_index}-0-${prodno}"]/div[2])${productcatarray}
                    #click the instruction table to remove the design type dropdown modal
                    Click Element    xpath=//*[@id="instruction-${last_index}"]
                    #input number of units
                    Input Text    xpath=//*[@id="units-${last_index}-0"]    2
                    #select position
                    Select From List By Label   xpath=//*[@id="position-${last_index}-0"]    Anterior
                    #select design software
                    Select From List By Label    xpath=//*[@id="scannerType-${last_index}"]    3Shape
                    #input instructions
                    Input Text    xpath=//*[@id="instruction-${last_index}"]    test automation
                    #click submit
                    Sleep    1s
                    #Confirm Submit
                ELSE
                    Click Element    xpath=//*[@id="select-design-type-${last_index}-0"]
                    Click Element    xpath=/html/body/div[1]/div/div/create-case-modal/div/div[1]/div[5]/table/tbody/tr[${length}]/td[3]/table/tbody/tr/td[2]/div[2]/div/div[${addprodcat}]/p
                    #click the check box of the selected design type
                    Click Element    xpath=(//*[@id="checkbox-${prodcatflow}-${last_index}-0-${prodno}"]/div[2])${productcatarray}
                    #Confirm Submit
                END
                
    #2nd product
    Log To Console    ${addprodname2} Second product
    ${elements}    Get WebElements    xpath=//*[@id="uia-draft-file-table-rows"]
                ${length}    Get Length    ${elements}
                ${last_index}    Evaluate    ${length} - 1
                Set Global Variable    ${length}
                    IF    ${last_index} == 0
                        ${thetr}    Set Variable    ${EMPTY}
                    ELSE
                        ${thetr}    Set Variable    [${length}]
                    END
                Log To Console    ${thetr} this is the log
                    #Evaluating the prodcat number based on the defined product category name
                IF  "${addprodname2}" == "crown-and-bridge"
                    ${prodcat}    Set Variable    2 
                    ${prodcatflow}    Set Variable    ${addprodname2}
                    ${prodno}    Set Variable    ${prodnocnb}
                ELSE
                    IF    "${addprodname2}" == "models"
                        ${prodcat}    Set Variable    3
                        ${prodcatflow}    Set Variable    ${addprodname2}
                        ${prodno}    Set Variable    ${prodnomodel}
                    ELSE
                        IF    "${addprodname2}" == "implant-restoration"
                            ${prodcat}    Set Variable    4
                            ${prodcatflow}    Set Variable    ${addprodname2}
                            ${prodno}    Set Variable    ${prodnoimplant}
                        ELSE
                            IF    "${addprodname2}" == "aligners"
                                ${prodcat}    Set Variable    6
                                ${prodcatflow}    Set Variable    ${addprodname2}
                                ${prodno}    Set Variable    ${prodnoaligners}
                            ELSE
                                IF    "${addprodname2}" == "removables"
                                    ${prodcat}    Set Variable    7
                                    ${prodcatflow}    Set Variable    ${addprodname2}
                                    ${prodno}    Set Variable    ${prodnoremovables}
                                ELSE
                                    IF    "${addprodname2}" == "snapon-smile"
                                        ${prodcat}    Set Variable    8
                                        ${prodcatflow}    Set Variable    ${addprodname2}
                                        ${prodno}    Set Variable    ${prodnosnap}
                                    ELSE
                                        IF    "${addprodname2}" == "dentofacial-digital"
                                            ${prodcat}    Set Variable    9
                                            ${prodcatflow}    Set Variable    ${addprodname2}
                                            ${prodno}    Set Variable    ${prodnodento}
                                        ELSE
                                            IF    "${addprodname2}" == "other"
                                                ${prodcat}    Set Variable    10
                                                ${prodcatflow}    Set Variable    ${addprodname2}
                                                ${prodno}    Set Variable    ${prodnoother}
                                            ELSE
                                                IF    "${addprodname2}" == "Surgical Planning"
                                                    ${prodcat}    Set Variable    5
                                                    ${addprodname}[1]    Set Variable    implant-restoration
                                                    ${productcatarray}    Set Variable    [2]
                                                    ${prodcatflow}    Set Variable    Surgical Planning
                                                ELSE
                                                    Log To Console    Second Product is incorrect
                                                    Close All Browsers
                                                END
                                            END
                                            
                                        END
                                    END
                                END
                            END
                        END
                    END
                END
                
                Log To Console    ${prodcat} This is the product number based on the defined product category name
                ${arrayno}    Set Variable    1
                ${addprodcat}    Set Variable    ${prodcat}
                #Assigning flow based on the product selected
                ${inthelist}    Run keyword and return status    Should Be True    '${prodcatflow}' in ${prodcatlistunits}
                Log To Console    ${inthelist}
                IF    ${inthelist} == ${True}
                    Click Element    xpath=//*[@id="select-design-type-${last_index}-0"]
                    Click Element    xpath=/html/body/div[1]/div/div/create-case-modal/div/div[1]/div[5]/table/tbody/tr[${length}]/td[3]/table/tbody/tr/td[2]/div[2]/div/div[${addprodcat}]/p
                    #click the check box of the selected design type
                    Click Element    xpath=(//*[@id="checkbox-${prodcatflow}-${last_index}-0-${prodno}"]/div[2])${productcatarray}
                    #click the instruction table to remove the design type dropdown modal
                    Click Element    xpath=//*[@id="instruction-${last_index}"]
                    #input number of units
                    Input Text    xpath=//*[@id="units-${last_index}-${arrayno}"]    2
                    #select position
                    Select From List By Label   xpath=//*[@id="position-${last_index}-${arrayno}"]    Anterior
                    #select design software
                    Select From List By Label    xpath=//*[@id="scannerType-${last_index}"]    3Shape
                    #input instructions
                    # Input Text    xpath=//*[@id="instruction-${last_index}"]    test automation
                    #click submit
                    Sleep    1s

                ELSE
                    Click Element    xpath=//*[@id="select-design-type-${last_index}-${arrayno}"]
                    Click Element    xpath=/html/body/div[1]/div/div/create-case-modal/div/div[1]/div[5]/table/tbody/tr[${length}]/td[3]/table/tbody/tr/td[2]/div[2]/div/div[${addprodcat}]/p
                    #click the check box of the selected design type
                    Click Element    xpath=(//*[@id="checkbox-${prodcatflow}-${last_index}-${arrayno}-${prodno}"]/div[2])${productcatarray}

                END
                END

    #3rd product
    IF    ${prodlength} > 2
    Log To Console    ${addprodname3} Third product
    ${elements}    Get WebElements    xpath=//*[@id="uia-draft-file-table-rows"]
                ${length}    Get Length    ${elements}
                ${last_index}    Evaluate    ${length} - 1
                Set Global Variable    ${length}
                    IF    ${last_index} == 0
                        ${thetr}    Set Variable    ${EMPTY}
                    ELSE
                        ${thetr}    Set Variable    [${length}]
                    END
                Log To Console    ${thetr} this is the log
                    #Evaluating the prodcat number based on the defined product category name
                IF  "${addprodname3}" == "crown-and-bridge"
                    ${prodcat}    Set Variable    2 
                    ${prodcatflow}    Set Variable    ${addprodname3}
                    ${prodno}    Set Variable    ${prodnocnb}
                ELSE
                    IF    "${addprodname3}" == "models"
                        ${prodcat}    Set Variable    3
                        ${prodcatflow}    Set Variable    ${addprodname3}
                        ${prodno}    Set Variable    ${prodnomodel}
                    ELSE
                        IF    "${addprodname3}" == "implant-restoration"
                            ${prodcat}    Set Variable    4
                            ${prodcatflow}    Set Variable    ${addprodname3}
                            ${prodno}    Set Variable    ${prodnoimplant}
                        ELSE
                            IF    "${addprodname3}" == "aligners"
                                ${prodcat}    Set Variable    6
                                ${prodcatflow}    Set Variable    ${addprodname3}
                                ${prodno}    Set Variable    ${prodnoaligners}
                            ELSE
                                IF    "${addprodname3}" == "removables"
                                    ${prodcat}    Set Variable    7
                                    ${prodcatflow}    Set Variable    ${addprodname3}
                                    ${prodno}    Set Variable    ${prodnoremovables}
                                ELSE
                                    IF    "${addprodname3}" == "snapon-smile"
                                        ${prodcat}    Set Variable    8
                                        ${prodcatflow}    Set Variable    ${addprodname3}
                                        ${prodno}    Set Variable    ${prodnosnap}
                                    ELSE
                                        IF    "${addprodname3}" == "dentofacial-digital"
                                            ${prodcat}    Set Variable    9
                                            ${prodcatflow}    Set Variable    ${addprodname3}
                                            ${prodno}    Set Variable    ${prodnodento}
                                        ELSE
                                            IF    "${addprodname3}" == "other"
                                                ${prodcat}    Set Variable    10
                                                ${prodcatflow}    Set Variable    ${addprodname3}
                                                ${prodno}    Set Variable    ${prodnoother}
                                            ELSE
                                                IF    "${addprodname3}" == "Surgical Planning"
                                                    ${prodcat}    Set Variable    5
                                                    ${addprodname3}    Set Variable    implant-restoration
                                                    ${productcatarray}    Set Variable    [2]
                                                    ${prodcatflow}    Set Variable    Surgical Planning
                                                ELSE
                                                    Log To Console    3rd product is incorrect
                                                    Close All Browsers
                                                END
                                            END
                                            
                                        END
                                    END
                                END
                            END
                        END
                    END
                END
                
                Log To Console    ${prodcat} This is the product number based on the defined product category name
                ${arrayno}    Set Variable    0
                ${addprodcat}    Set Variable    ${prodcat}
                #Assigning flow based on the product selected
                ${inthelist}    Run keyword and return status    Should Be True    '${prodcatflow}' in ${prodcatlistunits}
                Log To Console    ${inthelist}
                IF    ${inthelist} == ${True}
                    Click Element    xpath=//*[@id="select-design-type-${last_index}-0"]
                    Click Element    xpath=/html/body/div[1]/div/div/create-case-modal/div/div[1]/div[5]/table/tbody/tr[${length}]/td[3]/table/tbody/tr/td[2]/div[2]/div/div[${addprodcat}]/p
                    #click the check box of the selected design type
                    Click Element    xpath=(//*[@id="checkbox-${prodcatflow}-${last_index}-0-${prodno}"]/div[2])${productcatarray}
                    #click the instruction table to remove the design type dropdown modal
                    Click Element    xpath=//*[@id="instruction-${last_index}"]
                    #input number of units
                    Input Text    xpath=//*[@id="units-${last_index}-${arrayno}"]    2
                    #select position
                    Select From List By Label   xpath=//*[@id="position-${last_index}-${arrayno}"]    Anterior
                    #select design software
                    Select From List By Label    xpath=//*[@id="scannerType-${last_index}"]    3Shape
                    #input instructions
                    # Input Text    xpath=//*[@id="instruction-${last_index}"]    test automation
                    #click submit
                    Sleep    1s

                ELSE
                    Click Element    xpath=//*[@id="select-design-type-${last_index}-0"]
                    Click Element    xpath=/html/body/div[1]/div/div/create-case-modal/div/div[1]/div[5]/table/tbody/tr[${length}]/td[3]/table/tbody/tr/td[2]/div[2]/div/div[${addprodcat}]/p
                    #click the check box of the selected design type
                    Click Element    xpath=(//*[@id="checkbox-${prodcatflow}-${last_index}-${arrayno}-${prodno}"]/div[2])${productcatarray}

                END
                END
                #4th product
                IF    ${prodlength} > 3
                Log To Console    ${addprodname4} Fourth product
                ${elements}    Get WebElements    xpath=//*[@id="uia-draft-file-table-rows"]
                ${length}    Get Length    ${elements}
                ${last_index}    Evaluate    ${length} - 1
                Set Global Variable    ${length}
                    IF    ${last_index} == 0
                        ${thetr}    Set Variable    ${EMPTY}
                    ELSE
                        ${thetr}    Set Variable    [${length}]
                    END
                Log To Console    ${thetr} this is the log
                    #Evaluating the prodcat number based on the defined product category name
                IF  "${addprodname4}" == "crown-and-bridge"
                    ${prodcat}    Set Variable    2 
                    ${prodcatflow}    Set Variable    ${addprodname4}
                    ${prodno}    Set Variable    ${prodnocnb}
                ELSE
                    IF    "${addprodname4}" == "models"
                        ${prodcat}    Set Variable    3
                        ${prodcatflow}    Set Variable    ${addprodname4}
                        ${prodno}    Set Variable    ${prodnomodel}
                    ELSE
                        IF    "${addprodname4}" == "implant-restoration"
                            ${prodcat}    Set Variable    4
                            ${prodcatflow}    Set Variable    ${addprodname4}
                            ${prodno}    Set Variable    ${prodnoimplant}
                        ELSE
                            IF    "${addprodname4}" == "aligners"
                                ${prodcat}    Set Variable    6
                                ${prodcatflow}    Set Variable    ${addprodname4}
                                ${prodno}    Set Variable    ${prodnoaligners}
                            ELSE
                                IF    "${addprodname4}" == "removables"
                                    ${prodcat}    Set Variable    7
                                    ${prodcatflow}    Set Variable    ${addprodname4}
                                    ${prodno}    Set Variable    ${prodnoremovables}
                                ELSE
                                    IF    "${addprodname4}" == "snapon-smile"
                                        ${prodcat}    Set Variable    8
                                        ${prodcatflow}    Set Variable    ${addprodname4}
                                        ${prodno}    Set Variable    ${prodnosnap}
                                    ELSE
                                        IF    "${addprodname4}" == "dentofacial-digital"
                                            ${prodcat}    Set Variable    9
                                            ${prodcatflow}    Set Variable    ${addprodname4}
                                            ${prodno}    Set Variable    ${prodnodento}
                                        ELSE
                                            IF    "${addprodname4}" == "other"
                                                ${prodcat}    Set Variable    10
                                                ${prodcatflow}    Set Variable    ${addprodname4}
                                                ${prodno}    Set Variable    ${prodnoother}
                                            ELSE
                                                IF    "${addprodname4}" == "Surgical Planning"
                                                    ${prodcat}    Set Variable    5
                                                    ${addprodname4}    Set Variable    implant-restoration
                                                    ${productcatarray}    Set Variable    [2]
                                                    ${prodcatflow}    Set Variable    Surgical Planning
                                                ELSE
                                                    Close All Browsers
                                                END
                                            END
                                            
                                        END
                                    END
                                END
                            END
                        END
                    END
                END
                
                Log To Console    ${prodcat} This is the product number based on the defined product category name
                ${arrayno}    Set Variable    0
                ${addprodcat}    Set Variable    ${prodcat}
                #Assigning flow based on the product selected
                ${inthelist}    Run keyword and return status    Should Be True    '${prodcatflow}' in ${prodcatlistunits}
                Log To Console    ${inthelist}
                IF    ${inthelist} == ${True}
                    Click Element    xpath=//*[@id="select-design-type-${last_index}-0"]
                    Click Element    xpath=/html/body/div[1]/div/div/create-case-modal/div/div[1]/div[5]/table/tbody/tr[${length}]/td[3]/table/tbody/tr/td[2]/div[2]/div/div[${addprodcat}]/p
                    #click the check box of the selected design type
                    Click Element    xpath=(//*[@id="checkbox-${prodcatflow}-${last_index}-0-${prodno}"]/div[2])${productcatarray}
                    #click the instruction table to remove the design type dropdown modal
                    Click Element    xpath=//*[@id="instruction-${last_index}"]
                    #input number of units
                    Input Text    xpath=//*[@id="units-${last_index}-${arrayno}"]    2
                    #select position
                    Select From List By Label   xpath=//*[@id="position-${last_index}-${arrayno}"]    Anterior
                    #select design software
                    Select From List By Label    xpath=//*[@id="scannerType-${last_index}"]    3Shape
                    #input instructions
                    # Input Text    xpath=//*[@id="instruction-${last_index}"]    test automation
                    #click submit
                    Sleep    1s

                ELSE
                    Click Element    xpath=//*[@id="select-design-type-${last_index}-${arrayno}"]
                    Click Element    xpath=/html/body/div[1]/div/div/create-case-modal/div/div[1]/div[5]/table/tbody/tr[${length}]/td[3]/table/tbody/tr/td[2]/div[2]/div/div[${addprodcat}]/p
                    #click the check box of the selected design type
                    Click Element    xpath=(//*[@id="checkbox-${prodcatflow}-${last_index}-${arrayno}-${prodno}"]/div[2])${productcatarray}

                END
                END

                #5th product
                IF    ${prodlength} > 4
                Log To Console    ${addprodname5} Fourth product
                ${elements}    Get WebElements    xpath=//*[@id="uia-draft-file-table-rows"]
                ${length}    Get Length    ${elements}
                ${last_index}    Evaluate    ${length} - 1
                Set Global Variable    ${length}
                    IF    ${last_index} == 0
                        ${thetr}    Set Variable    ${EMPTY}
                    ELSE
                        ${thetr}    Set Variable    [${length}]
                    END
                Log To Console    ${thetr} this is the log
                    #Evaluating the prodcat number based on the defined product category name
                IF  "${addprodname5}" == "crown-and-bridge"
                    ${prodcat}    Set Variable    2 
                    ${prodcatflow}    Set Variable    ${addprodname5}
                    ${prodno}    Set Variable    ${prodnocnb}
                ELSE
                    IF    "${addprodname5}" == "models"
                        ${prodcat}    Set Variable    3
                        ${prodcatflow}    Set Variable    ${addprodname5}
                        ${prodno}    Set Variable    ${prodnomodel}
                    ELSE
                        IF    "${addprodname5}" == "implant-restoration"
                            ${prodcat}    Set Variable    4
                            ${prodcatflow}    Set Variable    ${addprodname5}
                            ${prodno}    Set Variable    ${prodnoimplant}
                        ELSE
                            IF    "${addprodname5}" == "aligners"
                                ${prodcat}    Set Variable    6
                                ${prodcatflow}    Set Variable    ${addprodname5}
                                ${prodno}    Set Variable    ${prodnoaligners}
                            ELSE
                                IF    "${addprodname5}" == "removables"
                                    ${prodcat}    Set Variable    7
                                    ${prodcatflow}    Set Variable    ${addprodname5}
                                    ${prodno}    Set Variable    ${prodnoremovables}
                                ELSE
                                    IF    "${addprodname5}" == "snapon-smile"
                                        ${prodcat}    Set Variable    8
                                        ${prodcatflow}    Set Variable    ${addprodname5}
                                        ${prodno}    Set Variable    ${prodnosnap}
                                    ELSE
                                        IF    "${addprodname5}" == "dentofacial-digital"
                                            ${prodcat}    Set Variable    9
                                            ${prodcatflow}    Set Variable    ${addprodname5}
                                            ${prodno}    Set Variable    ${prodnodento}
                                        ELSE
                                            IF    "${addprodname5}" == "other"
                                                ${prodcat}    Set Variable    10
                                                ${prodcatflow}    Set Variable    ${addprodname5}
                                                ${prodno}    Set Variable    ${prodnoother}
                                            ELSE
                                                IF    "${addprodname5}" == "Surgical Planning"
                                                    ${prodcat}    Set Variable    5
                                                    ${addprodname5}    Set Variable    implant-restoration
                                                    ${productcatarray}    Set Variable    [2]
                                                    ${prodcatflow}    Set Variable    Surgical Planning
                                                ELSE
                                                    Close All Browsers
                                                END
                                            END
                                            
                                        END
                                    END
                                END
                            END
                        END
                    END
                END
                
                Log To Console    ${prodcat} This is the product number based on the defined product category name
                ${arrayno}    Set Variable    0
                ${addprodcat}    Set Variable    ${prodcat}
                #Assigning flow based on the product selected
                ${inthelist}    Run keyword and return status    Should Be True    '${prodcatflow}' in ${prodcatlistunits}
                Log To Console    ${inthelist}
                IF    ${inthelist} == ${True}
                    Click Element    xpath=//*[@id="select-design-type-${last_index}-0"]
                    Click Element    xpath=/html/body/div[1]/div/div/create-case-modal/div/div[1]/div[5]/table/tbody/tr[${length}]/td[3]/table/tbody/tr/td[2]/div[2]/div/div[${addprodcat}]/p
                    #click the check box of the selected design type
                    Click Element    xpath=(//*[@id="checkbox-${prodcatflow}-${last_index}-0-${prodno}"]/div[2])${productcatarray}
                    #click the instruction table to remove the design type dropdown modal
                    Click Element    xpath=//*[@id="instruction-${last_index}"]
                    #input number of units
                    Input Text    xpath=//*[@id="units-${last_index}-${arrayno}"]    2
                    #select position
                    Select From List By Label   xpath=//*[@id="position-${last_index}-${arrayno}"]    Anterior
                    #select design software
                    Select From List By Label    xpath=//*[@id="scannerType-${last_index}"]    3Shape
                    #input instructions
                    # Input Text    xpath=//*[@id="instruction-${last_index}"]    test automation
                    #click submit
                    Sleep    1s

                ELSE
                    Click Element    xpath=//*[@id="select-design-type-${last_index}-${arrayno}"]
                    Click Element    xpath=/html/body/div[1]/div/div/create-case-modal/div/div[1]/div[5]/table/tbody/tr[${length}]/td[3]/table/tbody/tr/td[2]/div[2]/div/div[${addprodcat}]/p
                    #click the check box of the selected design type
                    Click Element    xpath=(//*[@id="checkbox-${prodcatflow}-${last_index}-${arrayno}-${prodno}"]/div[2])${productcatarray}

                END
                END

                #6th product
                IF    ${prodlength} > 5
                Log To Console    ${addprodname6} Fourth product
                ${elements}    Get WebElements    xpath=//*[@id="uia-draft-file-table-rows"]
                ${length}    Get Length    ${elements}
                ${last_index}    Evaluate    ${length} - 1
                Set Global Variable    ${length}
                    IF    ${last_index} == 0
                        ${thetr}    Set Variable    ${EMPTY}
                    ELSE
                        ${thetr}    Set Variable    [${length}]
                    END
                Log To Console    ${thetr} this is the log
                    #Evaluating the prodcat number based on the defined product category name
                IF  "${addprodname6}" == "crown-and-bridge"
                    ${prodcat}    Set Variable    2 
                    ${prodcatflow}    Set Variable    ${addprodname6}
                    ${prodno}    Set Variable    ${prodnocnb}
                ELSE
                    IF    "${addprodname6}" == "models"
                        ${prodcat}    Set Variable    3
                        ${prodcatflow}    Set Variable    ${addprodname6}
                        ${prodno}    Set Variable    ${prodnomodel}
                    ELSE
                        IF    "${addprodname6}" == "implant-restoration"
                            ${prodcat}    Set Variable    4
                            ${prodcatflow}    Set Variable    ${addprodname6}
                            ${prodno}    Set Variable    ${prodnoimplant}
                        ELSE
                            IF    "${addprodname6}" == "aligners"
                                ${prodcat}    Set Variable    6
                                ${prodcatflow}    Set Variable    ${addprodname6}
                                ${prodno}    Set Variable    ${prodnoaligners}
                            ELSE
                                IF    "${addprodname6}" == "removables"
                                    ${prodcat}    Set Variable    7
                                    ${prodcatflow}    Set Variable    ${addprodname6}
                                    ${prodno}    Set Variable    ${prodnoremovables}
                                ELSE
                                    IF    "${addprodname6}" == "snapon-smile"
                                        ${prodcat}    Set Variable    8
                                        ${prodcatflow}    Set Variable    ${addprodname6}
                                        ${prodno}    Set Variable    ${prodnosnap}
                                    ELSE
                                        IF    "${addprodname6}" == "dentofacial-digital"
                                            ${prodcat}    Set Variable    9
                                            ${prodcatflow}    Set Variable    ${addprodname6}
                                            ${prodno}    Set Variable    ${prodnodento}
                                        ELSE
                                            IF    "${addprodname6}" == "other"
                                                ${prodcat}    Set Variable    10
                                                ${prodcatflow}    Set Variable    ${addprodname6}
                                                ${prodno}    Set Variable    ${prodnoother}
                                            ELSE
                                                IF    "${addprodname6}" == "Surgical Planning"
                                                    ${prodcat}    Set Variable    5
                                                    ${addprodname6}    Set Variable    implant-restoration
                                                    ${productcatarray}    Set Variable    [2]
                                                    ${prodcatflow}    Set Variable    Surgical Planning
                                                ELSE
                                                    Close All Browsers
                                                END
                                            END
                                            
                                        END
                                    END
                                END
                            END
                        END
                    END
                END
                
                Log To Console    ${prodcat} This is the product number based on the defined product category name
                ${arrayno}    Set Variable    0
                ${addprodcat}    Set Variable    ${prodcat}
                #Assigning flow based on the product selected
                ${inthelist}    Run keyword and return status    Should Be True    '${prodcatflow}' in ${prodcatlistunits}
                Log To Console    ${inthelist}
                IF    ${inthelist} == ${True}
                    Click Element    xpath=//*[@id="select-design-type-${last_index}-0"]
                    Click Element    xpath=/html/body/div[1]/div/div/create-case-modal/div/div[1]/div[5]/table/tbody/tr[${length}]/td[3]/table/tbody/tr/td[2]/div[2]/div/div[${addprodcat}]/p
                    #click the check box of the selected design type
                    Click Element    xpath=(//*[@id="checkbox-${prodcatflow}-${last_index}-0-${prodno}"]/div[2])${productcatarray}
                    #click the instruction table to remove the design type dropdown modal
                    Click Element    xpath=//*[@id="instruction-${last_index}"]
                    #input number of units
                    Input Text    xpath=//*[@id="units-${last_index}-${arrayno}"]    2
                    #select position
                    Select From List By Label   xpath=//*[@id="position-${last_index}-${arrayno}"]    Anterior
                    #select design software
                    Select From List By Label    xpath=//*[@id="scannerType-${last_index}"]    3Shape
                    #input instructions
                    # Input Text    xpath=//*[@id="instruction-${last_index}"]    test automation
                    #click submit
                    Sleep    1s

                ELSE
                    Click Element    xpath=//*[@id="select-design-type-${last_index}-${arrayno}"]
                    Click Element    xpath=/html/body/div[1]/div/div/create-case-modal/div/div[1]/div[5]/table/tbody/tr[${length}]/td[3]/table/tbody/tr/td[2]/div[2]/div/div[${addprodcat}]/p
                    #click the check box of the selected design type
                    Click Element    xpath=(//*[@id="checkbox-${prodcatflow}-${last_index}-${arrayno}-${prodno}"]/div[2])${productcatarray}

                END
                END
                Confirm Submit

test lang
    Go to evident staging
    Login lab account
    Upload file
    close support pop up modal
    Submit single case with multiple products
    Close and check if Case is created
        ${casenumber}    Get Text    xpath=/html/body/ui-view/ui-view/lab-case-management/div/div[2]/div[5]/div[1]/table/tbody/tr[1]/td[2]/div[1]/p[1]
        ${checkcaseno}    Copy.Copy   ${casenumber}
        Log To Console    ${checkcaseno}
    Log out lab account   
    Login Designer account  
    Process the case number    ${checkcaseno}    ${newlabname}
    Logout designer account
    Relogin lab account
    Search the completed case    ${casenumber}
    download the design file    ${casenumber}
    Check if element is removed from Not yet completed    ${casenumber}
    Log To Console    ${casenumber}- Done End to End Automation of Test Scenario 15
   
    