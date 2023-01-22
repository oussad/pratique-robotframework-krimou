*** Settings ***
Documentation    execrcice sur la liste deroulante  
Library    SeleniumLibrary



*** Variables ***
${URL}    https://www.google.ca/    
${Browser}    chrome
${element}    python
*** Test Cases ***
test1
    Open Browser  ${URL}    ${Browser}   
    Maximize Browser Window
    Sleep    3
    Input Text    xpath://input[@class="gLFyf"]    selenium
    Sleep    3
    #Click Element    //div[@class="wM6W7d WggQGd"]
   # Select From List By Label    xpath://span[text()="selenium"]    selenium python
    #Click Element    xpath://b[text()=" python"]
    #Execute Javascript
    #Input Text    xpath://input[@class="gLFyf"]    selenium
   # Sleep    2
   # Select From List By Label    xpath://b[text()=" python"]     python
    #Sleep    2
   # Execute Javascript    window.SVGClipPathElement.name    ${element}    
    Sleep    2
    Select From List By Label    xpath://b[text()=" python"]     python
    Sleep    2
    Click Element    xpath://b[text()=" python"]
    #Sleep    3

***Keywords ***