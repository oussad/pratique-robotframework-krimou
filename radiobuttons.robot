*** Settings ***
Documentation    tester les radios bouttons 
Library    SeleniumLibrary

*** Variables ***
${URL}    http://omayo.blogspot.com/
${Browser}    chrome


*** Test Cases ***
test 1
    Open Browser  ${URL}    ${Browser} 
    Maximize Browser Window
    Sleep    2
    Select Radio Button    gender    male
    Sleep    2

    Select Radio Button    gender    female
    Sleep    2
    Close Browser

*** Keywords ***