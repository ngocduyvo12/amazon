*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/TopNav.robot
Resource    ../Resources/PO/ResultPage.robot
Resource    ../Resources/PO/ProductPage.robot
Resource    ../Resources/PO/CartPage.robot
Resource    ../Resources/PO/SignInPage.robot
*** Keywords ***
Search for Product
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products

Select Product from Search Result
    ResultPage.Verify Search Completed
    ResultPage.Click Product Link

Add Product to Cart
    ProductPage.Verify Page Loaded
    ProductPage.Click Add to Cart
    CartPage.Verify Cart Page Loaded

Begin Check Out
    CartPage.Click Link to Check Out
    SignInPage.Verify Signin Page is Loaded
