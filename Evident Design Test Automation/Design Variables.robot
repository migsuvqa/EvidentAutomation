***Settings***
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
${desurl}    https://preprodevidentdesign.azurewebsites.net/Account/Login
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
${trayno}    1    #Aligner Tray number
${productcatarray}         #this is for the surgical planning product.
${prodcatflow}
${prodcat}        #dont enter any value
${prodcatname}    models    #check the available values on Product ordering - Product Category name             
${prodno}    0       #check the available values on Product ordering - Product number

#for multiple product orders
@{addprodname}    crown-and-bridge    implant-restoration    models    aligners
${prodnocnb}    3
${prodnomodel}    2
${prodnoimplant}    3
${prodnosurgical}    
${prodnoaligners}    1
${prodnoremovables}
${prodnodento}
${prodnosnap}
${prodnoother}
${addprodcat}     #dont enter any value
@{prodcatlistunits}    crown-and-bridge    implant-restoration    #Do not change
@{alignerprods}    1    2




#for skillbond
${skillbondlabname}    Skillbond Test Lab