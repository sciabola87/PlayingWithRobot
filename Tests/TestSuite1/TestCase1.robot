*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${var1}  http://www.thetestingworld.com

*** Test Cases ***
Test Case 1 funzionamento Login e Logout
    ${var2}= Open Browser  ${var1}  chrome

#Estendo la dimensione della finestra del Browser
    maximize Browser window
