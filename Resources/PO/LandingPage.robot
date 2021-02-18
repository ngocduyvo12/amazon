*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Load
    go to    ${START_URL}

Verify Page Loaded
    Wait Until Page Contains  Best Sellers
