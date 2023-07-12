*** Settings ***
Documentation    Evident design end to end automation
Library    Selenium2Library
Library    DateTime
Library    copy.py
Library    clipboard
Library    String

*** Variables ***
${browser}    edge
${Url}    https://demoqa.com/links


** Keywords ***
Go to evident staging
    Open browser    ${Url}    ${browser}
    Set Browser Implicit Wait    25
    Maximize Browser Window

*** Test Cases **    

Evident staging index
    Go to evident staging
test cases 1
    ${list}    Get List Items    xpath=/html/body/div[2]/div/div/div[2]/div[2]/div[2]
    Log To Console    ${list}
    
