*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Search for Products
    Type in Search Term
    Click On Search

Type in Search Term
    Input Text  id=twotabsearchtextbox  ${SEARCH_TERM}

Click On Search
    Click Button  xpath=//*[@id="nav-search-submit-button"]