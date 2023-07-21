

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

Test Scenario #15 Multi product
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
    Process the case number of Muliproduct    ${checkcaseno}    ${newlabname}
    Logout designer account
    Relogin lab account
    Search the completed case    ${casenumber}
    download the design file    ${casenumber}
    Check if element is removed from Not yet completed    ${casenumber}
    Log To Console    ${casenumber}- Done End to End Automation of Test Scenario 15


