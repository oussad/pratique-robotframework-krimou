*** Settings ***
Documentation    tester liste deroulante dropdown
Library    SeleniumLibrary
Library    XML

*** Variables ***
${URL}    http://omayo.blogspot.com/
${Browser}    chrome
*** Test Cases ***
test1
    Open Browser  ${URL}    ${Browser} 
    Maximize Browser Window
    Sleep    2
    #electioner par inde dans la liset non deroulante 
    Select From List By Index    id:multiselect1    1
    Sleep    3
    Unselect From List By Index    id:multiselect1    1
    Sleep    3
    #electioner par inde dans la liset non deroulante et selectionner plusieur element a la fois 
    Select From List By Label    id:multiselect1    Volvo
    Select From List By Label    id:multiselect1    Hyundai
    Sleep    3
    Select From List By Value    id:multiselect1    audix
    Sleep    2
    #electioner par par valeur dans une liste deroulante deroule et puis selectionner juste un seule element 
    Select From List By Value    id:drop1    jkl
    Sleep    2
    #2 methode pour seleconner un element dans la liste deroulante en deux etapes derouler et selectionner 
    Click Element    id:drop1
    Sleep    2
    Click Element    id:ironman5
    Sleep    2
    Close Browser
    
*** Keywords ***