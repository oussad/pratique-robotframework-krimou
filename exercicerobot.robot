*** Settings ***
Documentation    exercice pratique 
Library    SeleniumLibrary
*** Variables ***
${URL}    https://imdb.com
${Browser}    chrome

*** Test Cases ***
test1
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Sleep    2
    Open Context Menu    //div[text()=""]
    Sleep    2






*** Keywords ***