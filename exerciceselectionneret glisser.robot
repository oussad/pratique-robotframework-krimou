*** Settings ***
Documentation    
Library    SeleniumLibrary



*** Variables ***
${URL}    https://jqueryui.com/droppable/
${Browser}    chrome

*** Test Cases ***
test1
    Open Browser  ${URL}    ${Browser}   
    Maximize Browser Window
    Sleep    3
    Select Frame    xpath://iframe[@class="demo-frame"]  
    Drag And Drop By Offset    id:draggable    150    28      
    Sleep    2

***Keywords ***
