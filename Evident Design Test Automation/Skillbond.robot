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


*** Test Cases ***


Submit Design and complete the cases submitted by Skillbond
    Go to preproddesign
    Login Designer account
    Submit and complete the cases


# to check assigned
#     Go to preproddesign
#     Login Designer account
#     # WHILE    1 == 1
#     #Retrieving new cases submitted by Skillbond
#     #click assigned
#     Click Element    xpath=//*[@id="uia-btn-assigned"]
#     Sleep    2s
#     #input the lab name
#     Input Text    xpath=//*[@id="search-lab-input uia-textinput-labfilter"]    ${skillbondlabname} 
#     Wait Until Element Is Visible    xpath=//*[@id="searchlab-dropdown"]/li[1]    timeout=100s
#     Click Element    xpath=//*[@id="searchlab-dropdown"]/li[1][contains(text(), '${skillbondlabname}')]
#     Sleep    2s
#     @{parentelement2}    Get Webelements    xpath=//tr[./td/div[@class='ng-binding'] = "${skillbondlabname}"]
#     @{caselist2}    Create List
#     FOR    ${element2}    IN    @{parentelement2}
#         ${getatt2}    Selenium2Library.Get Element Attribute    ${element2}    id
#         ${splitatt2}    Strip String    ${getatt2}    left    checkCases_No_
#         Append To List    ${caselist2}    ${splitatt2}
#     END
#     Log To Console    ${caselist2} These are the Cases to complete
#         FOR    ${case2}    IN    @{caselist2}
#             #assign case
#             Scroll to top
#             #Download file
#             Wait until element is enabled    xpath=//*[@id="uia-btn-assigned"]
#             Scroll to top
#             Click Element    xpath=//*[@id="uia-btn-assigned"]
#             Sleep    2s
#             #Click download button
#             Click Element    xpath=//*[@id="checkCases_No_${case2}"]/td[10]/div[2]/div/div[3]/button
#             Wait Until Element Is Visible    xpath=//*[@id="checkCases_No_${case2}"]/td[10]/div[3]/div/div[1]/button[contains(text(), 'Submit design file(s)')]    timeout=100s
#             #Submit file   
#             #Go to inprogress tab filter
#             # Wait Until Element Is Enabled    xpath=//*[@id="uia-btn-inprogress"]
#             Sleep    2s
#             Click Element    xpath=//*[@id="uia-btn-inprogress"]
#             Sleep    2s
#             Wait Until Element Is Visible    xpath=//*[@id="checkCases_No_${case2}"]/td[10]/div[3]/div/div[1]/button    
#             Click Element    xpath=//*[@id="checkCases_No_${case2}"]/td[10]/div[3]/div/div[1]/button    #click submit button
#             Sleep    2s
#                 ${submitdesign}    Run Keyword And Return Status    Page Should Contain Element    xpath=//*[@id="submit-design-modal"]/div[2]/div[2]/div[1]
#                 IF    ${submitdesign} == ${true}
#                     Choose file    xpath=//*[@id="hiddeninput-cm"]    ${CURDIR}/design1.jfif
#                 ELSE
#                     Click Element    xpath=//*[@id="checkCases_No_${case2}"]/td[10]/div[3]/div/div[1]/button
#                     Choose file    xpath=//*[@id="hiddeninput-cm"]    ${CURDIR}/design1.jfif
#                 END
#             Wait Until Element Is Visible    class=remove_file.ng-scope    timeout=100s
#             Wait Until Element Is Enabled    xpath=//*[@id="uia-btn-submit"]    timeout=100s    
#             Sleep    1s
#             #click Submit button
#             Click Element    xpath=//*[@id="uia-btn-submit"]
#             Sleep    2s    
#             #close the success message
#             Wait Until Element Is Visible    xpath=//div[contains(text(), 'Your file(s) has been submitted.')]    timeout=100s
#             Click Element    xpath=//*[@id="submit-design-modal"]/div[1]/img
#             #Check case on completed
#             Reload Page
#             Scroll to top
#             Click Element    xpath=//*[@id="uia-btn-completed"]/div
#             ${casesucompleted2}    Run keyword and return Status    Page Should Contain    ${case2}
#             Should Be True    ${casesucompleted2}
#             Log To Console    ${case2} is completed
#             Reload page   
#         END

# to check inprogress

#     Go to preproddesign
#     Login Designer account
#     # WHILE    1 == 1
#     #Retrieving new cases submitted by Skillbond
#     #click in progress
#     Click Element    xpath=//*[@id="uia-btn-inprogress"]
#     Sleep    2s
#     #input the lab name
#     Input Text    xpath=//*[@id="search-lab-input uia-textinput-labfilter"]    ${skillbondlabname} 
#     Wait Until Element Is Visible    xpath=//*[@id="searchlab-dropdown"]/li[1]    timeout=100s
#     Click Element    xpath=//*[@id="searchlab-dropdown"]/li[1][contains(text(), '${skillbondlabname}')]
#     Sleep    2s
#     @{parentelement3}    Get Webelements    xpath=//tr[./td/div[@class='ng-binding'] = "${skillbondlabname}"]
#     @{caselist3}    Create List
#     FOR    ${element3}    IN    @{parentelement3}
#         ${getatt3}    Selenium2Library.Get Element Attribute    ${element3}    id
#         ${splitatt3}    Strip String    ${getatt3}    left    checkCases_No_
#         Append To List    ${caselist3}    ${splitatt3}
#     END
#     Log To Console    ${caselist3} These are the Cases to complete
#         FOR    ${case3}    IN    @{caselist3}
#             #assign case
#             Scroll to top
#             #Download file
#             Wait until element is enabled    xpath=//*[@id="uia-btn-inprogress"]
#             Scroll to top
#             Click Element    xpath=//*[@id="uia-btn-inprogress"]
#             Sleep    2s
#             #Submit file   
#             #Go to inprogress tab filter
#             # Wait Until Element Is Enabled    xpath=//*[@id="uia-btn-inprogress"]
#             Sleep    2s
#             Wait Until Element Is Visible    xpath=//*[@id="checkCases_No_${case3}"]/td[10]/div[3]/div/div[1]/button    
#             Click Element    xpath=//*[@id="checkCases_No_${case3}"]/td[10]/div[3]/div/div[1]/button    #click submit button
#             Sleep    2s
#                 ${submitdesign}    Run Keyword And Return Status    Page Should Contain Element    xpath=//*[@id="submit-design-modal"]/div[2]/div[2]/div[1]
#                 IF    ${submitdesign} == ${true}
#                     Choose file    xpath=//*[@id="hiddeninput-cm"]    ${CURDIR}/design1.jfif
#                 ELSE
#                     Click Element    xpath=//*[@id="checkCases_No_${case3}"]/td[10]/div[3]/div/div[1]/button
#                     Choose file    xpath=//*[@id="hiddeninput-cm"]    ${CURDIR}/design1.jfif
#                 END
#             Wait Until Element Is Visible    class=remove_file.ng-scope    timeout=100s
#             Wait Until Element Is Enabled    xpath=//*[@id="uia-btn-submit"]    timeout=100s    
#             Sleep    1s
#             #click Submit button
#             Click Element    xpath=//*[@id="uia-btn-submit"]
#             Sleep    2s    
#             #close the success message
#             Wait Until Element Is Visible    xpath=//div[contains(text(), 'Your file(s) has been submitted.')]    timeout=100s
#             Click Element    xpath=//*[@id="submit-design-modal"]/div[1]/img
#             #Check case on completed
#             Reload Page
#             Scroll to top
#             Click Element    xpath=//*[@id="uia-btn-completed"]/div
#             ${casesucompleted3}    Run keyword and return Status    Page Should Contain    ${case3}
#             Should Be True    ${casesucompleted3}
#             Log To Console    ${case3} is completed
#             Reload page   
#         END



    