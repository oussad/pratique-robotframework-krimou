*** Settings ***
Documentation    tester la fonction scrole
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.countries-ofthe-world.com/flags-of-the-world.html
${Brower}    chrome

*** Test Cases ***
test1
    Open Browser    ${url}      ${Brower}  
    Maximize Browser Window
    Sleep    2
    #Execute Javascript    window.scrollTo(0,7000)
    #Sleep    2
   # Execute Javascript    window.scrollTo(0,-7000)
   # Execute Async Javascript    window.scrollTo(0,document.body.scrollHeight)
   # Sleep    2
   # Execute Async Javascript    window.scrollTo(0,document.body.scrollHeight)
   # Sleep    2
   Scroll Element Into View    xpath://td[text()="Jamaica"]
    Sleep    2
    Close Browser
    

*** Keywords ***