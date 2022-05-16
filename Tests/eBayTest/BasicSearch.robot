*** Settings ***

Documentation  Basic Search Functionality
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***

Verifica semplice funzionalita per eBay
    [Dovumentation]  Questo caso di Test verifica la ricerca su eBay
    [Tags]  Functional

#apro il browser
    Open Bowser  http://www.ebay.com  chrome

#imposto un tempo di attesa di 2 secondi
    Set Browser Implicit Wait  2

#metto in attesa di 2 secondi prima che compia il passo successivo
    sleep  2

#Inserisco il testo desiderato dentro la TextBox desiderata (tramite xpath)
    Input Text //*[@id="gh-ac"]  mobile
    Set Browser Implicit Wait  2
    sleep  2

#Premo il pulsante per avviare la ricerca
    Press Key  //*[@id="gh-btn"]  [Return]
    Set Browser Implicit Wait  2
    sleep  2

#Verifico che nella pagina restituita si trova il parametro rivercato
    Page Should Contain  results for mobile
    Set Browser Implicit Wait  2
    sleep  2

#Chiudo il Browser
    Close Browser


*** Kexwords ***