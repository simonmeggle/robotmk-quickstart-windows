*** Settings ***
Library           SeleniumLibrary
Suite Teardown    Close All Browsers

*** Variables *** 
${URL} =            http://testautomationpractice.blogspot.com/
${BROWSER} =        firefox

*** Test Cases ***
Tabelle Fachliteratur
    Open Browser                ${URL}    ${BROWSER} 
    Maximize Browser Window
    Page Should Contain         Automation Testing Practice
    Page Should Contain Element    //table[@name='BookTable']   message=FEHLER: Tabelle nicht gefunden 