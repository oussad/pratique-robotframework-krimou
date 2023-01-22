*** Settings ***
Documentation    keyword avec  arguement sans retour    
Library    SeleniumLibrary



*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${Browser}    chrome
${URL1}    https://google.ca    
${Browser1}    chrome
${user}    Admin
${password}    admin123

*** Test Cases ***
test1login
    [Tags]    test1
    ${title}=    lancer le navigateur    ${URL}    ${Browser}
    Log To Console    ${title}
    Sleep    3
    remplir le formulaire de login    ${user}     ${password}
    Close Browser
testdashborad
    lancer le navigateur    ${URL}    ${Browser}
    Sleep    3
    remplir le formulaire de login    ${user}     ${password} 
    Page Should Contain    dashetborad
testsearchgoogle
    ${title}=    lancer le navigateur    ${URL1}    ${Browser1}
    Log To Console    ${title}
***Keywords ***
lancer le navigateur
    [Arguments]     ${URLdusite}    ${navigateur}  
    Open Browser  ${URLdusite}    ${navigateur}   
    Maximize Browser Window
    ${title}    Get Title
    [Return]    ${title}
remplir le formulaire de login 
    [Arguments]    ${agruser}    ${argpwd}  
    Input Text    //input[@name="username"]    ${agruser} 
    Input Password    //input[@name="password"]    ${argpwd} 
    Click Button    //button[@type="submit"]
    Sleep    3
