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


Submit design and complete Skillbond Case 
    Go to preproddesign
    Login Designer account
    Evaluate Test files
    Submit and complete the cases
    # ${cases}    Get File    my_file.txt
    # Log To Console    ${cases}
    # ${cases}    Split String    ${cases}    ,
    # ${linelength}    Get Length    ${cases}
    # FOR    ${case}    IN    @{cases}
    #     Log To Console    ${case}
    #     Sleep    3s
    #     # Input Text    xpath=/html/body/header/div/nav/div/div[4]/div/div[2]/input   ${labname}
    #     # Sleep    1
    #     # Click Element    xpath=//li[contains(text(), 'Automation lab')]
    #     Click Element    xpath=//*[@id="uia-btn-allcases"]
    #     Sleep    2s
    #     #assign case
    #     Click Element    class=btn.btn-primary.btn-inverse.download-submit-button.uia-btn-assigntome.uia-btn-assigntome-${case}
    #     Sleep    2s
    #     #Download file
    #     Scroll to top
    #     Click Element    xpath=//*[@id="uia-btn-assigned"]
    #     Sleep    2s
    #     Click Element    xpath=//*[@id="checkCases_No_${case}"]/td[10]/div[2]/div/div[3]/button
    #     Sleep    15s    wait to download files
    #     Scroll to top
    #     Click Element    xpath=//*[@id="uia-btn-inprogress"]
    #     #Submit file   
    #     #click submit a file
    #     Click Element    xpath=//*[@id="checkCases_No_${case}"]/td[10]/div[3]/div/div[1]/button
    #     ${submitdesign}    Run Keyword And Return Status    Page Should Contain Element    xpath=//*[@id="submit-design-modal"]/div[2]/div[2]/div[1]    
    #     Log To Console    ${submitdesign}   upload design is visible.
    #     IF    ${submitdesign} == ${true}
    #         Choose file    xpath=//*[@id="hiddeninput-cm"]    ${CURDIR}/design1.jfif
    #     ELSE
    #         Click Element    xpath=//*[@id="checkCases_No_${case}"]/td[10]/div[3]/div/div[1]/button
    #         Choose file    xpath=//*[@id="hiddeninput-cm"]    ${CURDIR}/design1.jfif
    #     END
    #     Wait Until Element Is Visible    class=remove_file.ng-scope    timeout=20s
    #     Wait Until Element Is Enabled    xpath=//*[@id="uia-btn-submit"]    timeout=20s
    #     Wait Until Element Is Visible    class=remove_file.ng-scope    timeout=20s
    #     Sleep    2s
    #     #click Submit button
    #     Click Element    xpath=//*[@id="uia-btn-submit"]
    #     Wait Until Element Is Visible    xpath=//div[contains(text(), 'Your file(s) has been submitted.')]    timeout=20s
    #     #close the success message
    #     Click Element    xpath=//*[@id="submit-design-modal"]/div[1]/img
    #     #Check case on completed
    #     Reload Page
    #     Scroll to top
    #     Click Element    xpath=//*[@id="uia-btn-completed"]/div
    #     ${casesucompleted1}    Run keyword and return Status    Page Should Contain    ${case}      
    #     Should Be True    ${casesucompleted1}
    #     Log To Console    ${case} is completed
    # END

test dito

    Go to preproddesign
    Login Designer account
    #click not assigned
    Click Element    xpath=//*[@id="uia-btn-notassigned"]/div/div[2][contains(text(), 'Not Assigned')]
    #input the lab name
    Input Text    xpath=//*[@id="search-lab-input uia-textinput-labfilter"]    ${skillbondlabname} 
    Wait Until Element Is Visible    xpath=//*[@id="searchlab-dropdown"]/li[1]
    Click Element    xpath=//*[@id="searchlab-dropdown"]/li[1][contains(text(), '${skillbondlabname}')]
    Sleep    2s
    #@{labelements}    Get WebElements    xpath=//*[starts-with(@id, 'checkCases_No_')]/td[7]/div[contains(text(), '${skillbondlabname}')]
    #@{elements}    Get text    xpath=//*[starts-with(@id, 'checkCases_No_')]/td[7]/div[contains(text(), '${skillbondlabname}')]    #xpath=//*[starts-with(@id, 'checkCases_No_')]/td[2]/div[1]/p[1]
    @{parentelement}    Get Webelements    xpath=//tr[./td/div[@class='ng-binding'] = "${skillbondlabname}"]
    @{caselist}    Create List
    FOR    ${element}    IN    @{parentelement}
        ${getatt}    Selenium2Library.Get Element Attribute    ${element}    id
        ${splitatt}    Strip String    ${getatt}    left    checkCases_No_
        Append To List    ${caselist}    ${splitatt}
    END
    Log To Console    ${caselist} These are the Cases to complete
    FOR    ${case}    IN    @{caselist}
        #assign case
        Click Element    class=btn.btn-primary.btn-inverse.download-submit-button.uia-btn-assigntome.uia-btn-assigntome-${case}
        Sleep    2s
        #Download file
        Scroll to top
        Click Element    xpath=//*[@id="uia-btn-assigned"]
        Sleep    2s
        #Click download button
        Click Element    xpath=//*[@id="checkCases_No_${case}"]/td[10]/div[2]/div/div[3]/button
        Wait Until Element Is Visible    xpath=//*[@id="checkCases_No_${case}"]/td[10]/div[3]/div/div[1]/button[contains(text(), 'Submit design file(s)')]    timeout=100s
        #Submit file   
        #Go to inprogress tab filter
        # Wait Until Element Is Enabled    xpath=//*[@id="uia-btn-inprogress"]
        Sleep    2s
        Click Element    xpath=//*[@id="uia-btn-inprogress"]
        Sleep    2s
        #Edit tray number of Aligner product
        Wait Until Element Is Visible    xpath=//*[@id="checkCases_No_${case}"]/td[10]/div[3]/div/div[1]/button
        Click Element    xpath=//*[@id="checkCases_No_${case}"]/td[10]/div[3]/div/div[1]/button
        Sleep    2s
        ${submitdesign}    Run Keyword And Return Status    Page Should Contain Element    xpath=//*[@id="submit-design-modal"]/div[2]/div[2]/div[1]
        Log To Console    ${submitdesign}   upload design is visible.
        IF    ${submitdesign} == ${true}
            Choose file    xpath=//*[@id="hiddeninput-cm"]    ${CURDIR}/design1.jfif
        ELSE
            Click Element    xpath=//*[@id="checkCases_No_${case}"]/td[10]/div[3]/div/div[1]/button
            Choose file    xpath=//*[@id="hiddeninput-cm"]    ${CURDIR}/design1.jfif
        END
        # Click Element    xpath=//*[@id="checkCases_No_${checkcaseno}"]/td[10]/div[3]/div/div[1]/button
        # Choose file    xpath=//*[@id="hiddeninput-cm"]    ${CURDIR}/design1.jfif
        Wait Until Element Is Visible    class=remove_file.ng-scope    timeout=20s
        Wait Until Element Is Enabled    xpath=//*[@id="uia-btn-submit"]    timeout=20s    
        Sleep    1s
        #click Submit button
        Click Element    xpath=//*[@id="uia-btn-submit"]
        Sleep    2s    
        #close the success message
        Wait Until Element Is Visible    xpath=//div[contains(text(), 'Your file(s) has been submitted.')]    timeout=20s
        Click Element    xpath=//*[@id="submit-design-modal"]/div[1]/img
        #Check case on completed
        Reload Page
        Scroll to top
        Click Element    xpath=//*[@id="uia-btn-completed"]/div
        ${casesucompleted}    Run keyword and return Status    Page Should Contain    ${case}
        Should Be True    ${casesucompleted}
        Log To Console    ${casesucompleted} is completed
        
    END


Final Run
    Go to preproddesign
    Login Designer account
    Retrieving new cases submitted by Skillbond
    Submit and complete the cases

