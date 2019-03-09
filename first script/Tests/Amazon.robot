*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary

# robot -d results Amazon.robot

*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser  http://www.asiaworld.cn.ua  chrome
    sleep  3s
    Close Browser

*** Keywords ***
