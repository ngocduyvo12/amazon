*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Cart Page Loaded
    Wait Until Page Contains  Added to Cart

Click Link to Check Out
    Click Link  id=hlb-ptc-btn-native