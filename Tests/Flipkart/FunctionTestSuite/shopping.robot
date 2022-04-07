*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${search_flipkart}  Flipkart
${url}  https://www.google.com/

*** Test Cases ***
Google search
    [Documentation]  google search test
    [Tags]  google
    start testcase
    input text  name:q  ${search_flipkart}
    submit form
    click element  class:LC20lb

Flipkart Product Search
    [Documentation]  searching products on flipkart website
    [Tags]  flipkart
    sleep  2s
    click button  class:_2KpZ6l
    flipkart search
    sleep  2s

Flipkart product seletion
    [Documentation]  selecting a product
    [Tags]  flipkart
    click element  xpath=//html/body/div/div/div[3]/div[1]/div[2]/div[2]/div/div/div/a/div[2]/div[1]/div[1]
    sleep  2s
    stop testcase

*** Keywords ***
start testcase
    open browser  ${url}  chrome
    maximize browser window
stop testcase
    close browser
flipkart search
    input text  name:q  iphone13
    click button  class:L0Z3Pu





