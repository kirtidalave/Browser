

*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${search_parameter}  Harman
${url}   https://www.google.com/

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
    Open Browser  ${url}  chrome
    search data
    Submit form
    Close Browser


*** Keywords ***
search data
     Input Text  name:q  ${search_parameter}

