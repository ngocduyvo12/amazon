*** Settings ***
Documentation    This is some basic info about the whole suite
Resource    ../Resources/Amazon.robot
Resource    ../Resources/Common.robot
#Suite Setup    Insert Testing Data
Test Setup    Begin Web Test
Test Teardown    End Web Test
#Suite Teardown    Cleanup Testing Data


# Copy/paste the line below into Terminal to execute:
# robot -d results tests/amazon.robot
###

*** Variables ***
${BROWSER} =  chrome
${START_URL} =    http://www.amazon.com
${SEARCH_TERM} =    Lamborghini

*** Test Cases ***
User Can Search for Product
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Amazon.Search for Product


User Must Signin To Check Out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Amazon.Search for Product
    Amazon.Select Product from Search Result
    Amazon.Add Product to Cart
    Amazon.Begin Check Out

