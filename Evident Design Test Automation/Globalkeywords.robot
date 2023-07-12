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


*** Variables ***
${browser}    edge
${Url}    https://stagingevidentdigital.xyz/
${AdminUrl}    https://ppevidentadminhub.azurewebsites.net/#/login
${NewUserSsu}    https://preprodevidentdesign.azurewebsites.net/Account/Registration
${username}    labtestautomation@getnada.com
${password}    P@ssword1
${labname}    Automation lab
${getcasetime}    Get Text    xpath=/html/body/ui-view/ui-view/lab-case-management/div/div[2]/div[5]/div[1]/table/tbody/tr[1]/td[4]
${edusername}    design@getnada.com
${edpassword}    password1
${newpassword}    nP@ssword1
${adminUser}    passportadmin@getnada.com
${adminPass}    password1
${Labnewemail}    labtestautomation1@getnada.com
${newlabname}    NewLab test Automation





*** Keywords ***
Go to evident staging
    Open browser    ${Url}    ${browser}
    Set Browser Implicit Wait    100s
    Maximize Browser Window


Scroll to top
    Execute JavaScript    window.scrollTo(0, 0)

Scroll down    
    Execute Javascript    window.scrollBy(0, 1050)

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
Upload file
        Wait Until Page Contains Element    xpath=//*[@id="hiddeninput-cm"]    timeout=100s
        Choose File     xpath=//*[@id="hiddeninput-cm"]    ${CURDIR}/download.jfif
        Sleep    3s 
Upload multiple files
        Wait Until Element Is Visible    xpath=//*[@id="case-management-page"]/div[2]/div[2]/div[2]
        Choose File     xpath=//*[@id="hiddeninput-cm"]    ${CURDIR}/multi1.jfif \n ${CURDIR}/multi2.jfif \n ${CURDIR}/multi3.jfif
        sleep    10s  

 close support pop up modal
     ${supportpop1}    Run Keyword And Return Status    Page Should Contain Element    xpath=//*[@id="hubspot-conversations-iframe"]
     IF    ${supportpop1} == ${True}
         Select Frame    xpath=//*[@id="hubspot-conversations-iframe"]
         ${supportpop}    Run Keyword And Return Status    Page Should Contain Element    xpath=//*[@id="welcome-message"]
        Log To Console    ${supportpop}
        IF    ${supportpop} == ${True}
            # Select Frame    xpath=//*[@id="hubspot-conversations-iframe"]
            Click Element    xpath=//*[@id="welcome-message"]
            Sleep    0.5s
            Click Element    xpath=/html/body/div[2]/div[1]/div/span[3]/span/div/button
            Unselect Frame   
            Sleep    1s 
        ELSE
            Unselect Frame 
        END   
            
     ELSE
            Unselect Frame
     END
        # ${supportpop}    Run Keyword And Return Status    Page Should Contain Element    xpath=//*[@id="welcome-message"]
        # Log To Console    ${supportpop}
        # IF    ${supportpop} == ${True}
        #     # Select Frame    xpath=//*[@id="hubspot-conversations-iframe"]
        #     Click Element    xpath=//*[@id="welcome-message"]
        #     Sleep    0.5s
        #     Click Element    xpath=/html/body/div[2]/div[1]/div/span[3]/span/div/button
        #     Unselect Frame   
        #     Sleep    1s 
        # ELSE
        #     Unselect Frame 
        # END
Fill up case with favorite
            #get webelements
                ${elements}    Get WebElements    xpath=//*[@id="uia-draft-file-table-rows"]
                ${length}    Get Length    ${elements}
                ${last_index}    Evaluate    ${length} - 1
                    IF    ${last_index} == 0
                        ${thetr}    Set Variable    ${EMPTY}
                    ELSE
                        ${thetr}    Set Variable    [${length}]
                    END
                Log To Console    ${thetr} this is the log
                #click design type
                Click Element    xpath=//*[@id="select-design-type-${last_index}-0"]
                #select from design type drop down
                Click Element    xpath=/html/body/div[1]/div/div/create-case-modal/div/div[1]/div[5]/table/tbody/tr[${length}]/td[3]/table/tbody/tr/td[2]/div[2]/div/div[2]/p
                #click the check box of the selected design type
                Click Element    xpath=//*[@id="checkbox-crown-and-bridge-${last_index}-0-0"]/div[1]
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

Fill up case with no favorite
            #get webelements
                ${elements}    Get WebElements    xpath=//*[@id="uia-draft-file-table-rows"]
                ${length}    Get Length    ${elements}
                ${last_index}    Evaluate    ${length} - 1
                    IF    ${last_index} == 0
                        ${thetr}    Set Variable    ${EMPTY}
                    ELSE
                        ${thetr}    Set Variable    [${length}]
                    END
                Log To Console    ${thetr} this is the log
                #click design type
                Click Element    xpath=//*[@id="select-design-type-${last_index}-0"]
                #select from design type drop down
                Click Element    xpath=/html/body/div[1]/div/div/create-case-modal/div/div[1]/div[5]/table/tbody/tr${thetr}/td[3]/table/tbody/tr/td[2]/div[2]/div/div[1]/p
                #click the check box of the selected design type
                Click Element    xpath=//*[@id="checkbox-crown-and-bridge-${last_index}-0-0"]/div[1]
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

submit multiple files 
        ${elements}    Get WebElements    xpath=//*[@id="uia-draft-file-table-rows"]
        ${length}    Get Length    ${elements}
        ${1_uploaded}    Evaluate    ${length} - 3
        ${2_uploaded}    Evaluate    ${length} - 2
        ${3_uploaded}    Evaluate    ${length} - 1
        ${design_dropdown1}    Evaluate    ${1_uploaded} + 1
        ${design_dropdown2}    Evaluate    ${2_uploaded} + 1
        ${design_dropdown3}    Evaluate    ${3_uploaded} + 1
        
            #click 3 checkboxes
            Click Element    xpath=//*[@id="uia-draft-file-table-column-checkbox-${1_uploaded}"]/div[1]
            Click Element    xpath=//*[@id="uia-draft-file-table-column-checkbox-${2_uploaded}"]/div[1]
            Click Element    xpath=//*[@id="uia-draft-file-table-column-checkbox-${3_uploaded}"]/div[1]
            #fill up first file
            #click design type
            Click Element    xpath=//*[@id="select-design-type-${1_uploaded}-0"]
            #select from design type drop down
            Click Element    xpath=/html/body/div[1]/div/div/create-case-modal/div/div[1]/div[5]/table/tbody/tr[${design_dropdown1}]/td[3]/table/tbody/tr/td[2]/div[2]/div/div[2]/p
            #click the check box of the selected design type
            Click Element    xpath=//*[@id="checkbox-crown-and-bridge-${1_uploaded}-0-0"]/div[1]
            #click the instruction table to remove the design type dropdown modal
            Click Element    xpath=//*[@id="instruction-${1_uploaded}"]
            #input number of units
            Input Text    xpath=//*[@id="units-${1_uploaded}-0"]    1
            #select position
            Select From List By Label   xpath=//*[@id="position-${1_uploaded}-0"]    Anterior
            #select design software
            Select From List By Label    xpath=//*[@id="scannerType-${1_uploaded}"]    3Shape
            #input instructions
            Input Text    xpath=//*[@id="instruction-${1_uploaded}"]    first file
            
            #fill up second file
            #click design type
            Click Element    xpath=//*[@id="select-design-type-${2_uploaded}-0"]
            #select from design type drop down
            Click Element    xpath=/html/body/div[1]/div/div/create-case-modal/div/div[1]/div[5]/table/tbody/tr[${design_dropdown2}]/td[3]/table/tbody/tr/td[2]/div[2]/div/div[2]/p
            #click the check box of the selected design type
            Click Element    xpath=//*[@id="checkbox-crown-and-bridge-${2_uploaded}-0-0"]/div[1]
            #click the instruction table to remove the design type dropdown modal
            Click Element    xpath=//*[@id="instruction-${2_uploaded}"]
            #input number of units
            Input Text    xpath=//*[@id="units-${2_uploaded}-0"]    1
            #select position
            Select From List By Label   xpath=//*[@id="position-${2_uploaded}-0"]    Anterior
            #select design software
            Select From List By Label    xpath=//*[@id="scannerType-${2_uploaded}"]    3Shape
            #input instructions
            Input Text    xpath=//*[@id="instruction-${2_uploaded}"]    Second file

            #fill up third file
            #click design type
            Click Element    xpath=//*[@id="select-design-type-${3_uploaded}-0"]
            #select from design type drop down
            Click Element    xpath=/html/body/div[1]/div/div/create-case-modal/div/div[1]/div[5]/table/tbody/tr[${design_dropdown3}]/td[3]/table/tbody/tr/td[2]/div[2]/div/div[2]/p
            #click the check box of the selected design type
            Click Element    xpath=//*[@id="checkbox-crown-and-bridge-${3_uploaded}-0-0"]/div[1]
            #click the instruction table to remove the design type dropdown modal
            Click Element    xpath=//*[@id="instruction-${3_uploaded}"]
            #input number of units
            Input Text    xpath=//*[@id="units-${3_uploaded}-0"]    1
            #select position
            Select From List By Label   xpath=//*[@id="position-${3_uploaded}-0"]    Anterior
            #select design software
            Select From List By Label    xpath=//*[@id="scannerType-${3_uploaded}"]    3Shape
            #input instructions
            Input Text    xpath=//*[@id="instruction-${3_uploaded}"]    third file

            #submit cases
            Click Element    xpath=//*[@id="uia-submit-all-btn"]

Confirm Submit   
        #get webelements
        ${elements}    Get WebElements    xpath=//*[@id="uia-draft-file-table-rows"]
        ${length}    Get Length    ${elements}
        ${last_index}    Evaluate    ${length} - 1  
        Click Element    xpath=//*[@id="uia-submit-one-${last_index}"]

# Submit_case
#         Run Keyword And Ignore Error    Confirm Submit
#         Run Keyword And Continue On Failure    close support pop up modal

Close and check if Case is created
        Sleep    10s    to wait submittion of case
        Scroll Element Into View    xpath=//*[@id="close-wrapper"]
        #click the form submission close button
        Click Element    xpath=//*[@id="close-wrapper"]
        Scroll Element Into View    xpath=/html/body/ui-view/ui-view/lab-case-management/div/div[2]/div[5]/div[1]/table/tbody/tr[1]/td[2]/div[1]/p[1]
        ${casenumber}    Get Text    xpath=/html/body/ui-view/ui-view/lab-case-management/div/div[2]/div[5]/div[1]/table/tbody/tr[1]/td[2]/div[1]/p[1]
        ${checkcaseno}    Copy.Copy   ${casenumber}
        Log To Console    ${checkcaseno}

Check and copy submitted Case
        Sleep    10s    to wait submittion of case
        Scroll Element Into View    xpath=//*[@id="close-wrapper"]
        #click the form submission close button
        Click Element    xpath=//*[@id="close-wrapper"]

Check and copy submitted Cases
        Sleep    10s    to wait submittion of case
        Scroll Element Into View    xpath=//*[@id="close-wrapper"]
        #click the form submission close button
        Click Element    xpath=//*[@id="close-wrapper"]


Log out lab account
        #click the my account    
        Click Element    xpath=//*[@id="parent_header"]/div/div[1]/div[3]/ul/li[3]/div
        #click log out button
        Click Element    xpath=//*[@id="ed-logout"]

Login Designer account
        #login designer account
        #click sign in
        Click Element    xpath=//*[@id="login-in-page"]/div/div[2]/div/form/div[2]/button
        #input username
        input text    xpath=//*[@id="UserName"]    ${edusername}
        #input password
        input text    xpath=//*[@id="Password"]    ${edpassword}
        #click login
        Click Element    xpath=//*[@id="sso-login"]/form/input[5]

Process the case number
        #find the case number
        #search lab name
        [Arguments]    ${checkcaseno}    ${thename}
        
        Sleep    2s
        # Input Text    xpath=/html/body/header/div/nav/div/div[4]/div/div[2]/input   ${thename}
        # Sleep    1s
        # Click Element    xpath=//li[contains(text(), '${thename}')]
        Click Element    xpath=//*[@id="uia-btn-allcases"]
        #assign case
        Click Element    class=btn.btn-primary.btn-inverse.download-submit-button.uia-btn-assigntome.uia-btn-assigntome-${checkcaseno}
        Sleep    2s
        #Download file
        Click Element    xpath=//*[@id="uia-btn-assigned"]
        Sleep    2s
        Click Element    xpath=//*[@id="checkCases_No_${checkcaseno}"]/td[10]/div[2]/div/div[3]/button
        Sleep    20s
        #Submit file   
        #click submit a file
        Click Element    xpath=//*[@id="uia-btn-inprogress"]
        Sleep    2s
        Click Element    xpath=//*[@id="checkCases_No_${checkcaseno}"]/td[10]/div[3]/div/div[1]/button
        Choose file    xpath=//*[@id="hiddeninput-cm"]    ${CURDIR}/design1.jfif
        Wait Until Element Is Visible    class=remove_file.ng-scope
        Sleep    1s
        #click Submit button
        Click Element    xpath=//*[@id="uia-btn-submit"]
        Sleep    2s    
        #close the success message
        Click Element    xpath=//*[@id="submit-design-modal"]/div[1]/img


        #Check case on completed
        Reload Page
        Scroll to top
        Click Element    xpath=//*[@id="uia-btn-completed"]/div
        ${casesucompleted}    Run keyword and return Status    Page Should Contain    ${checkcaseno}
        Should Be True    ${casesucompleted}
        Log To Console    ${casesucompleted} is completed

Process the multiple cases submitted
        [Arguments]    ${checkcaseno1}    ${checkcaseno2}    ${checkcaseno3}    ${thename}
        #check case number 1
        #search lab name
        Sleep    3s
        # Input Text    xpath=/html/body/header/div/nav/div/div[4]/div/div[2]/input   ${labname}
        # Sleep    1s

        # Click Element    xpath=//li[contains(text(), 'Automation lab')]
        Click Element    xpath=//*[@id="uia-btn-allcases"]
        Sleep    2s
        #assign case
        Click Element    class=btn.btn-primary.btn-inverse.download-submit-button.uia-btn-assigntome.uia-btn-assigntome-${checkcaseno1}
        Sleep    2s
        #Download file
        Click Element    xpath=//*[@id="uia-btn-assigned"]
        Sleep    2s
        Click Element    xpath=//*[@id="checkCases_No_${checkcaseno1}"]/td[10]/div[2]/div/div[3]/button
        Sleep    15s    wait to download files
        Scroll to top
        Click Element    xpath=//*[@id="uia-btn-inprogress"]
        #Submit file   
        #click submit a file
        Click Element    xpath=//*[@id="checkCases_No_${checkcaseno1}"]/td[10]/div[3]/div/div[1]/button
        Choose file    xpath=//*[@id="hiddeninput-cm"]    ${CURDIR}/design1.jfif
        Sleep    2s
        Wait Until Element Is Visible    class=remove_file.ng-scope
        Sleep    1s
        #click Submit button
        Click Element    xpath=//*[@id="uia-btn-submit"]
        Sleep    2s    
        #close the success message
        Click Element    xpath=//*[@id="submit-design-modal"]/div[1]/img

        #check case number 2
        #search lab name     
        Scroll Element Into View    xpath=//*[@id="uia-btn-allcases"]
        Click Element    xpath=//*[@id="uia-btn-allcases"]
        #assign case
        Click Element    class=btn.btn-primary.btn-inverse.download-submit-button.uia-btn-assigntome.uia-btn-assigntome-${checkcaseno2}
        Sleep    2s
        #Download file
        Scroll Element Into View    xpath=//*[@id="uia-btn-assigned"]
        Click Element    xpath=//*[@id="uia-btn-assigned"]
        Sleep    2s
        Click Element    xpath=//*[@id="checkCases_No_${checkcaseno2}"]/td[10]/div[2]/div/div[3]/button
        Sleep    15s    wait to download files
        Scroll to top
        Click Element    xpath=//*[@id="uia-btn-inprogress"]
        #Submit file   
        #click submit a file
        Click Element    xpath=//*[@id="checkCases_No_${checkcaseno2}"]/td[10]/div[3]/div/div[1]/button
        Choose file    xpath=//*[@id="hiddeninput-cm"]    ${CURDIR}/design2.jfif
        Sleep    2s
        Wait Until Element Is Visible    class=remove_file.ng-scope
        Sleep    2s
        #click Submit button
        Click Element    xpath=//*[@id="uia-btn-submit"]
        Sleep    1s    
        #close the success message
        Click Element    xpath=//*[@id="submit-design-modal"]/div[1]/img

        #Check case number 3
        #search lab name
        Sleep    1.5s
        Scroll to top
        Click Element    xpath=//*[@id="uia-btn-allcases"]
        #assign case
        Click Element    class=btn.btn-primary.btn-inverse.download-submit-button.uia-btn-assigntome.uia-btn-assigntome-${checkcaseno3}
        Sleep    2s
        #Download file
        
        Sleep    2s
        Click Element    xpath=//*[@id="checkCases_No_${checkcaseno3}"]/td[10]/div[2]/div/div[3]/button
        Sleep    15s    wait to download files
        Scroll to top
        Click Element    xpath=//*[@id="uia-btn-inprogress"]
        #Submit file   
        #click submit a file
        Click Element    xpath=//*[@id="checkCases_No_${checkcaseno3}"]/td[10]/div[3]/div/div[1]/button
        Choose file    xpath=//*[@id="hiddeninput-cm"]    ${CURDIR}/design3.jfif
        Sleep    2s
        Wait Until Element Is Visible    class=remove_file.ng-scope
        Sleep    2s
        #click Submit button
        Click Element    xpath=//*[@id="uia-btn-submit"]
        Sleep    2s    
        #close the success message
        Click Element    xpath=//*[@id="submit-design-modal"]/div[1]/img

        #Check case on completed
        Reload Page
        Scroll to top
        Click Element    xpath=//*[@id="uia-btn-completed"]/div
        ${casesucompleted1}    Run keyword and return Status    Page Should Contain    ${checkcaseno1}
        ${casesucompleted2}    Run keyword and return Status    Page Should Contain    ${checkcaseno2}
        ${casesucompleted3}    Run keyword and return Status    Page Should Contain    ${Checkcaseno3}
        Should Be True    ${casesucompleted1}
        Should Be True    ${casesucompleted2}
        Should Be True    ${casesucompleted3}
        Log To Console    ${casesucompleted1},${casesucompleted2} and ${casesucompleted3} are completed

Logout designer account
        Wait Until Element Is Visible    xpath=//*[@id="single-button"]
        Click Element    xpath=//*[@id="single-button"]
        Click Element    xpath=//*[@id="ed-logout"]

Relogin lab account
        Click Element   xpath=//*[@id="login-in-page"]/div/div[2]/div/form/div[2]/button
        input text    xpath=//*[@id="UserName"]    ${username}
        input text    xpath=//*[@id="Password"]    ${password}
        Click Element    xpath=//*[@id="sso-login"]/form/input[5]

Relogin new lab account
        Click Element   xpath=//*[@id="login-in-page"]/div/div[2]/div/form/div[2]/button
        input text    xpath=//*[@id="UserName"]    ${newemail}
        input text    xpath=//*[@id="Password"]    ${password}
        Click Element    xpath=//*[@id="sso-login"]/form/input[5]

Search the completed case
        [Arguments]    ${completedcase}
        #Wait Until Element Is Visible    xpath=//*[@id="search-input-cases"]
        Sleep    5s
        Click Element    xpath=//*[@id="ed-completed-filter"]
        ${casecompleted}    Run Keyword and return Status    Page Should Contain Element    xpath=//*[@id="checkCases_No_${completedcase}"]/td[2]/div[1]/p[1]
        Should Be True    ${casecompleted}

Search and check if the cases are completed
        #first case
        [Arguments]    ${completedcase1}    ${completedcase2}    ${completedcase3}
        Click Element    xpath=//*[@id="ed-completed-filter"]
        ${case1completed}    Run keyword and return status    Page Should Contain Element    xpath=//*[@id="checkCases_No_${completedcase1}"]/td[2]/div[1]/p[1]
        ${case2completed}    Run keyword and return status    Page Should Contain Element    xpath=//*[@id="checkCases_No_${completedcase2}"]/td[2]/div[1]/p[1]
        ${case3completed}    Run keyword and return status    Page Should Contain Element    xpath=//*[@id="checkCases_No_${completedcase3}"]/td[2]/div[1]/p[1]
        Should Be True    ${case1completed}
        Should Be True    ${case2completed}
        Should Be True    ${case3completed}
        Log To Console    ${completedcase1},${completedcase2} and ${completedcase3} are completed

        

download the design file
        [Arguments]    ${completedcase}
        Scroll Element Into View    xpath=//*[@id="ed-download-case-attachment"]
        Click Element    xpath=//*[@id="checkCases_No_${completedcase}"]/td[7]/div[3]/div[2]/div[1]
        Sleep    15s    wait for the file to download

download the design file of multiple files completed
        [Arguments]    ${completedcase1}    ${completedcase2}    ${completedcase3}
        Click Element    xpath=//*[@id="checkCases_No_${completedcase1}"]/td[7]/div[3]/div[2]/div[1]
        Sleep    15s    wait for the file to download
        Click Element    xpath=//*[@id="checkCases_No_${completedcase2}"]/td[7]/div[3]/div[2]/div[1]
        Sleep    15s    wait for the file to download
        Click Element    xpath=//*[@id="checkCases_No_${completedcase3}"]/td[7]/div[3]/div[2]/div[1]
        Sleep    25s    wait for the file to download


Check if element is removed from Not yet completed
        [Arguments]    ${casenumber}
        Reload Page
        Sleep    3s
        Scroll to top
        Click Element    xpath=//*[@id="ed-completed-not-downloaded-filter"]
        Sleep    5s       
        ${elements}    Get WebElements    css=.ed-case-no.row-word-break
            FOR    ${element}    IN    @{elements}
                ${text}    Get Text    ${element}
                    ${textcaseno}    Set Variable    ${text[:9]}
                        Run Keyword if   '${casenumber}' in '${textcaseno}'    Fail    expected result: case number should be removed
                            END
Check if the cases are removed from not yet downloaded
    [Arguments]    ${completedcase1}    ${completedcase2}    ${completedcase3}
    Reload Page
    Scroll to top
    Wait Until Element Is Visible    xpath=//*[@id="ed-completed-not-downloaded-filter"]/div/div[2]
    #click not yet downloaded filter
    Click Element    xpath=//*[@id="ed-completed-not-downloaded-filter"]/div/div[2]
    
        ${elements}    Get WebElements    css=.ed-case-no.row-word-break
            FOR    ${element}    IN    @{elements}
                ${text}    Get Text    ${element}
                    ${textcaseno}    Set Variable    ${text[:9]}
                        Run Keyword if   '${completedcase1}' in '${textcaseno}'    Fail    expected result: ${completedcase1} should be removed
                            END

         ${elements}    Get WebElements    css=.ed-case-no.row-word-break
            FOR    ${element}    IN    @{elements}
                ${text}    Get Text    ${element}
                    ${textcaseno}    Set Variable    ${text[:9]}
                        Run Keyword If    '${completedcase2}' in '${textcaseno}'     Fail    expected result: ${completedcase2} should be removed
                            END

         ${elements}    Get WebElements    css=.ed-case-no.row-word-break
            FOR    ${element}    IN    @{elements}
                ${text}    Get Text    ${element}
                    ${textcaseno}    Set Variable    ${text[:9]}
                        Run Keyword If    '${completedcase3}' in '${textcaseno}'    Fail    expected result: ${completedcase3} should be removed
                            END

Element should be Visible
    [Arguments]    ${locator}
    Wait Until Page Contains Element    ${locator}
    Element Should Be Visible    ${locator}

change password
        Click Element    xpath=//*[@id="single-button"]
        Sleep    1s 
        Click Element    xpath=//*[@id="ed-account-dropdown"]/li[4]
        Input text    xpath=//*[@id="CurrentPassword"]    ${password}
        Input Text    xpath=//*[@id="NewPassword"]    ${newpassword}
        Input Text    xpath=//*[@id="ConfirmPassword"]    ${newpassword}
        Sleep    1s
        Click Element    xpath=//*[@id="change-password"]/form/div/div[6]/input
        Sleep    3s

Login using new password
        ${shouldcontain}    Run keyword and return status    Page Should Contain Element    xpath=//*[@id="parent_header"]/div/div[1]/div[3]/ul/li[3]/div    timeout=5s
      
        IF    ${shouldcontain} == ${True}
            Log out lab account
                #Relogin Lab account using new password
                Click Element   xpath=//*[@id="login-in-page"]/div/div[2]/div/form/div[2]/button
                input text    xpath=//*[@id="UserName"]    ${username}
                input text    xpath=//*[@id="Password"]    ${newpassword}
                Click Element    xpath=//*[@id="sso-login"]/form/input[5]
                Log To Console    Successfully login using the new password
                 #change back to original password

                Click Element    xpath=//*[@id="single-button"]
                Sleep    1s 
                Click Element    xpath=//*[@id="ed-change-password"]
                Input text    xpath=//*[@id="CurrentPassword"]    ${newpassword}
                Input Text    xpath=//*[@id="NewPassword"]    ${password}
                Input Text    xpath=//*[@id="ConfirmPassword"]    ${password}
                Sleep    1s
                Click Element    xpath=//*[@id="change-password"]/form/div/div[6]/input
                    
                    #login using the original password
                ${shouldcontain}    Run keyword and return status    Page Should Contain Element    xpath=//*[@id="parent_header"]/div/div[1]/div[3]/ul/li[3]/div
      
                IF    ${shouldcontain} == ${True}
                    Log To Console    ${True}
                ELSE
                    Reload Page
                    Log out lab account
                    Login lab account
                END
            

        ELSE
            Click Element    xpath=//*[@id="login-in-page"]/div/div[2]/div/form/div[2]/button
            Log out lab account
            #Relogin Lab account using new password
                Click Element   xpath=//*[@id="login-in-page"]/div/div[2]/div/form/div[2]/button
                input text    xpath=//*[@id="UserName"]    ${username}
                input text    xpath=//*[@id="Password"]    ${newpassword}
                Click Element    xpath=//*[@id="sso-login"]/form/input[5]
                Log To Console    Successfully login using the new password
            #change back to original password

                Click Element    xpath=//*[@id="single-button"]
                Sleep    1s 
                Click Element    xpath=//*[@id="ed-account-dropdown"]/li[4]
                Input text    xpath=//*[@id="CurrentPassword"]    ${newpassword}
                Input Text    xpath=//*[@id="NewPassword"]    ${password}
                Input Text    xpath=//*[@id="ConfirmPassword"]    ${password}
                Sleep    1s
                Click Element    xpath=//*[@id="change-password"]/form/div/div[6]/input
        
             #login using the original password
                ${shouldcontain}    Run keyword and return status    Page Should Contain Element    xpath=//*[@id="parent_header"]/div/div[1]/div[3]/ul/li[3]/div
      
                IF    ${shouldcontain} == ${True}
                    Log To Console    ${True}
                ELSE
                    Reload Page
                    Log out lab account
                    Login lab account
                END
        END


Go to Preprod Admin Hub
    Open browser    ${AdminUrl}    ${browser}
    Set Browser Implicit Wait    20s
    Maximize Browser Window

Go to new user ssu
    Open browser    ${NewUserSsu}    ${browser}
    Set Browser Implicit Wait    100s
    Maximize Browser Window


Create a Lab account
    #click login button    
        Click Element  xpath=/html/body/div[1]/div[1]/div/div[2]/div[3]/div/div/a
    #create an account
        Click Element    css=a[href='https://stagingevidentdigital.xyz/create-account?returnUrl=https://stagingevidentdigital.xyz/validate-otlid-redirect/&consumerApp=websitelogin']
    Input Text    xpath=//*[@id="create-account-form"]/div/input[1]    Automate    #firstname
    Input Text    xpath=//*[@id="create-account-form"]/div/input[2]    LabTesting    #lastname
        ${timestamp}    Get Time    epoch
        ${newemail}    Catenate    SEPARATOR=@    labtestautomation${timestamp}    getnada.com
        Set Global Variable    ${newemail}
    Log To Console    ${newemail} - Created email for new customer
    Input text    xpath=//*[@id="create-account-form"]/div/input[3]    ${newemail}    #email address
    Input Text    xpath=//*[@id="create-account-form"]/div/input[4]    AutoJob    #job title
    Input text    id=mbl-field    78945612    #mobile number
    Select From List By Value    xpath=//*[@id="create-account-form"]/div/select    lab    #type of business
    Input Text    xpath=//*[@id="psw"]    P@ssword1    #password
    Input text    xpath=//*[@id="psw2"]    P@ssword1    #retype password

    Scroll Element Into View    xpath=//*[@id="list1"]/span
    Select From List By Value    id=lab-size    1-5 technicians    #lab size
    Click Element    css=.dropdown-evidentcheck-list    #interested products 
    @{checkboxes}=    Create List    xpath=//*[@id="interested_products_cad_design"]
    ...    xpath=//*[@id="interested_products_cad_lms"]
    ...    xpath=//*[@id="interested_products_cad_sfs"]
    ...    xpath=//*[@id="interested_products_cad_wfa"]
    ...    xpath=//*[@id="interested_products_cad_ser"]
    FOR    ${checkbox}    IN    @{checkboxes}
    Select Checkbox    ${checkbox}
    ${checkbox_is_Selected}    Run Keyword And Return Status    Checkbox Should Be Selected    ${checkbox}
    Log To Console    ${checkbox_is_Selected}
    END
    select from list by value    xpath=//*[@id="heard-about-us"]    Facebook
    Select Checkbox    xpath=//*[@id="accept-privacy-terms"]
    #Submit details
    Click Element   xpath=//*[@id="create-account-form"]/button

    #Design Lab registration page
    Wait Until Page Contains Element    id=fstnme    timeout=100s
    Input Text    id=fstnme   NewLab test Automation
    Input Text    id=addressLineOne    Addressline one
    Input Text    id=addressLineTwo    Addressline two
    Input Text    id=city    City of Lab
    Input Text    id=state   State of Lab
    Select From List By Value    id=country    Canada
    Input Text    id=postalCode    Postal Code
    Select From List By Value    id=scannerOption    3Shape
    Click Element    xpath=//*[@id="designerRegisterForm"]/div[11]/li[1]/input
    Click Element    xpath=//*[@id="designerRegisterForm"]/div[11]/li[2]/input
    Click Element    xpath=//*[@id="designerRegisterForm"]/div[11]/li[3]/input
    Click Element    xpath=//*[@id="designerRegisterForm"]/div[11]/li[4]/input
    Click Element    xpath=//*[@id="designerRegisterForm"]/div[11]/li[5]/input
    Select From List By Value    id=dailycases    1-5
    Sleep    3s
    Click Element    class=ed-designer-register-btn.btn.btn-primary.btn-inverse.register-btn.ng-scope
    Sleep    10s

Setup payment details
    Click Element    xpath=//*[@id="billing-modal"]/div/div[2]/div[1]/button     #choose standard
    Input Text    xpath=//*[@id="evident-design-paymentDetails"]/div/div[3]/div/form/div[1]/div[1]/input    Automation Test ${TEST_NAME}
    Input Text    xpath=//*[@id="evident-design-paymentDetails"]/div/div[3]/div/form/div[1]/div[2]/input    4770706467047892
    Select From List By Label    xpath=//*[@id="evident-design-paymentDetails"]/div/div[3]/div/form/div[1]/div[3]/div[1]/select    12
    Select From List By Label    xpath=//*[@id="evident-design-paymentDetails"]/div/div[3]/div/form/div[1]/div[3]/div[2]/select    2031
    Input Text    xpath=//*[@id="evident-design-paymentDetails"]/div/div[3]/div/form/div[1]/div[4]/input    123
    Sleep    2s
    Click Element    xpath=//*[@id="evident-design-paymentDetails"]/div/div[3]/div/form/div[2]/button
    Wait Until Page Contains Element    xpath=//*[@id="billing-modal"]/div/div[2]/div/button    timeout=100s
    Click Element    xpath=//*[@id="billing-modal"]/div/div[2]/div/button
    Sleep    2s


Login new lab user account
    #click login button    
        Click Element  xpath=/html/body/div[1]/div[1]/div/div[2]/div[3]/div/div/a
        #input username
        input text    xpath=//*[@id="UserName"]    ${nuseremail}
        #input password
        input text    xpath=//*[@id="Password"]    ${password}
        #click login button
        Click Element    xpath=//*[@id="sso-login"]/form/input[5]

Relogin new lab user account
        Click Element   xpath=//*[@id="login-in-page"]/div/div[2]/div/form/div[2]/button
        input text    xpath=//*[@id="UserName"]    ${nuseremail}
        input text    xpath=//*[@id="Password"]    ${password}
        Click Element    xpath=//*[@id="sso-login"]/form/input[5]

Login admin account
        Input Text    xpath=//*[@id="email"]    ${adminUser}
        Input Text    xpath=//*[@id="password"]    ${adminPass}
        Click Element    xpath=/html/body/app-root/div/app-login/mat-card/form/div[2]/button
        Sleep    2s

Find the lab and add user
        Click Element    xpath=/html/body/app-root/div/app-customer-administration/mat-accordion/evident-design
        Input Text    xpath=//*[@id="mat-input-2"]    ${labname}
        Sleep    2s
        Wait Until Element Is Visible    xpath=//*[@id="mat-tab-content-0-0"]/div/div/div/mat-table/mat-row/mat-cell[2]/mat-icon    timeout=30s
        Click Element    xpath=//*[@id="mat-tab-content-0-0"]/div/div/div/mat-table/mat-row/mat-cell[2]/mat-icon
        Sleep    5s
        Scroll to top
        Wait Until Element Is Visible    xpath=//*[@id="customer-information"]/div[1]/div/div/mat-icon    timeout=30s
        Click Element    xpath=//*[@id="customer-information"]/div[1]/div/div/mat-icon
        Click Element    xpath=//*[@id="customer-information"]/div[2]/div/div/div[2]/div[3]/a
        Scroll Element Into View    xpath=//*[@id="customer-information"]/div[3]/div
        Input Text    xpath=//*[@id="firstName_0"]    Newuserfname
        Input Text    xpath=//*[@id="lastName_0"]    NewuserLname
                ${usertimestamp}    Get Time    epoch
                ${nuseremail}    Catenate    SEPARATOR=@    labtestautomation${usertimestamp}    getnada.com
                Set Global Variable    ${nuseremail}       
        Input Text    xpath=//*[@id="username_0"]    ${nuseremail}
        Log To Console    ${nuseremail}
        Scroll to top
        Click Element    xpath=//*[@id="customer-information"]/div[1]/div/div/div[2]
        Sleep    4s

self sign up the user

        Input Text    xpath=//*[@id="usr"]    ${nuseremail}
        Input Text    xpath=//*[@id="eml"]    ${nuseremail}
        Input Text    xpath=//*[@id="pwd"]    ${password}
        Input Text    xpath=//*[@id="cfmpwd"]    ${password}
        Click Element    xpath=//*[@id="lab-register-page"]/div/form/div[5]/button

        








