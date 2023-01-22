*** Settings ***
Documentation    keyword sans arguement    
Library    SeleniumLibrary



*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${Browser}    chrome

*** Test Cases ***
test1login
    [Tags]    test1
    lancer le navigateur  
    Sleep    3
    remplir le formulaire de login
    Close Browser
testdashborad
    lancer le navigateur
    Sleep    3
    remplir le formulaire de login
    Page Should Contain    dashetborad
***Keywords ***
lancer le navigateur
    Open Browser  ${URL}    ${Browser}   
    Maximize Browser Window
remplir le formulaire de login    
    Input Text    //input[@name="username"]    Admin
    Input Password    //input[@name="password"]    admin123
    Click Button    //button[@type="submit"]
    Sleep    3