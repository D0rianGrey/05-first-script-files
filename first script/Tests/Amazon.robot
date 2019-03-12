*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary

# robot -d results Amazon.robot

*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    #Pre-condition
    Open Browser  http://www.asiaworld.cn.ua  chrome
    wait until page contains  Обратный звонок
    input text  xpath=//input[@class="form-control"]   macbook air
    click button  xpath=//*[@id="full_search_form"]/span/button
    wait until page contains  Результаты поиска «macbook air»
    click link  xpath=/html/body/div[4]/div/div/div[3]/div[2]/div[1]/div[1]/div/div/a
    #Test Case

    #Post-condition
    sleep  3s
    Close Browser

*** Keywords ***
