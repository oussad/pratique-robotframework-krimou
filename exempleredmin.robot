*** Settings ***
Library    SeleniumLibrary
Documentation    automatisation cas de test creation d un nouveau projet sur redmin
Suite Setup   ouverture d'une session redmin
Suite Teardown   fermeture de la session redmin
 


*** Variables ***
${URl}    https://bdeb.omnivox.ca/Login/Account/Login?ReturnUrl=%2fintr%2f 
${browser}    chrome


*** Test Cases ***
test1   

    [Documentation]    accée a redmin 
    Input Text    css:#Identifiant    6203024
    Sleep    2
    Input Password    css:#Password    Anella108
    Sleep    2
    Click Button    xpath://button[@class="btn green darken-3 right recaptcha-trigger no-margin-right"] 

   
test2
    Double Click Element    xpath://span[text()="Horaire de cours"]
    Sleep    3
    #
    Open Context Menu    css:select[name="AnSession"]
    Sleep    2
    Click Element   css:option[value="20222"]
    Capture Element Screenshot    css:select[name="AnSession"]    ../captureexomnivox/elementselect.png
    Sleep    2
    #Select From List By Index    locator
    #Select From List By Value    xpath://option[@value="20222"]      
    #Sleep    2 
    Click Button    xpath://input[@type="submit"]
    Sleep    4
    Capture Page Screenshot    ../captureexomnivox/listecours.png
    #Click Element    xpath://option[@value="20231"]
   # Sleep    2
    



*** Keywords ***
ouverture d'une session redmin
    Open Browser  ${URl}    ${browser} 
    Maximize Browser Window
   
fermeture de la session redmin
    Close All Browsers