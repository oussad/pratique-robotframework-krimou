*** Settings ***
Documentation    exercice Tp pour pratiqué     
Library    SeleniumLibrary
Suite Setup    accés au site 
Suite Teardown    fermeture de la page de site 


Resource    checkboxes.robot

*** Variables ***
${URL}    https://www.imdb.com/?ref_=nv_home
${Browser}    chrome

*** Test Cases ***
test acces au recherche avence 
    Click Element    xpath://div[text()="Tout"]
    Sleep    2
    #Select From List By Value    //ul[@class="ipc-list searchCatSelector ipc-list--baseAlt"]
    #Select All From List    xpath://div[text()="Tout"] 
    Click Element    xpath://span[text()="Recherche avancée"] 
    Sleep    3
    Click Link    xpath://a[text()="Advanced Title Search"]
    Sleep    2
    Scroll Element Into View    xpath://h3[text()="Title Groups"]
    Sleep    2
    Select Checkbox    id:title_type-1  
    
    Sleep    2
    Select Checkbox    id:title_type-2
    Sleep    2
    Input Text    xpath://input[@name="release_date-min"]    2000
    Sleep    2
    Input Text    xpath://input[@name="release_date-max"]    2023
    Sleep    2
    Select From List By Label    xpath://select[@name="user_rating-min"]    1.0
    Sleep    2
    Select From List By Label    xpath://select[@name="user_rating-max"]    10
    Sleep    2
    Select Checkbox    id:genres-1
    Sleep    2
    Select Checkbox    id:groups-4
    Sleep    2
    Scroll Element Into View    xpath://h3[text()="Countries"]
    Sleep    2
    Select Checkbox    id:colors-1
    Sleep    2
    Scroll Element Into View    xpath://h3[text()="Runtime"]
    Sleep    2
    Select From List By Value    css:.countries    us
    Select From List By Value    css:.countries    gb
    Capture Element Screenshot    css:.countries    ../result/captelemey.png
    Sleep    2    
    Select From List By Value    css:.languages    en
    Sleep    2
    Select From List By Value    css:.languages    fr 
    Sleep    2
    Execute Javascript    window.scrollTo(0,3000)                              
    Sleep    2
    Select Radio Button    my_ratings    restrict
    Sleep    2
    Select Radio Button    my_ratings    my_ratings|
    Sleep    2
    Select From List By Value    id:search-count    250
    Sleep    2
    Click Button    css:.primary
    Capture Page Screenshot    ../result/cappage.png
    Sleep    2
    

***Keywords ***
accés au site 
    Open Browser  ${URL}    ${Browser}   
    Maximize Browser Window
    Sleep    3  
fermeture de la page de site 
    Close Browser