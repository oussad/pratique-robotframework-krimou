*** Settings ***
Documentation    tester cliquer et glisser dragangdrup
Library    SeleniumLibrary

*** Variables ***
${URL}    https://jqueryui.com/resources/demos/droppable/default.html
${browser}    chrome

*** Test Cases ***
test1
    Open Browser    ${URL}    ${browser}
    Maximize Browser Window
    Sleep    2
    #Drag And Drop    id:draggable    id:droppable
    Sleep    2
    #en indiquante la position avec le pixer
    Drag And Drop By Offset    id:draggable    150    80
    Close Browser


*** Keywords ***