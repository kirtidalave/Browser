

*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
login page test case
    [Documentation]  login for user
    [Tags]  user
    Log  Hello

Registration page test case
    [Documentation]  registration page for user
    [Tags]  user
    Log  Welcome

Dashboard test case
    [Documentation]  dashboard for use
    Log  Dash

Google test case
    [Documentation]  simple google test
    Open Browser    https://www.google.com/  chrome
    Input Text  name:q  HARMAN
    Submit form
    Close Browser


*** Keywords ***

