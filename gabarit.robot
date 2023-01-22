*** Settings ***
Documentation    
Library    SeleniumLibrary



*** Variables ***
${URL}
${Browser}    chrome

*** Test Cases ***
test1
    Open Browser  ${URL}    ${Browser}   
    Maximize Browser Window
    Sleep    3

***Keywords ***
