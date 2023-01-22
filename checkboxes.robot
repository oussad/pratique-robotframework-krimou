*** Settings ***
Documentation    automatiser les checkboxes
Library    SeleniumLibrary
Test Setup    ouverture de navigateur
Test Teardown    fermeture de navigateur
*** Variables ***
${URL}  https://the-internet.herokuapp.com/checkboxes
${browzer}    chrome
*** Test Cases ***
tester les checkboxes 
   [Tags]    regression
   Sleep    4
    Select Checkbox    css:#checkboxes>:nth-child(1)
    Sleep    3
    Unselect Checkbox    css:#checkboxes>:nth-child(3)
    

*** Keywords ***
ouverture de navigateur
    Open Browser   ${URL}     ${browzer}
    Maximize Browser Window
fermeture de navigateur 
    sleep    3
    Close Browser