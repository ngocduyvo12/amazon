*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Search Completed
    Wait Until Page Contains  results for "${SEARCH_TERM}"

Click Product Link
    [Documentation]    Click on the specified product
    Click Link   xpath=//*[@id="search"]/div[1]/div[2]/div/span[3]/div[2]/div[4]/div/span/div/div/div[2]/h2/a