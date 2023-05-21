*** Settings ***

Library    SeleniumLibrary

*** Variables ***




*** Keywords ***

Abrir Site    
    Open Browser    https://itera-qa.azurewebsites.net/home/automation     chrome

Abrir lista Suspensa
    Click Element   class:custom-select

Selecionar Pais      
    Click Element    //option[contains(text(), "Spain")]

*** Test Cases ***

Cenário 1: Selecionar o pais de viagem
    abrir site
    Abrir lista Suspensa
    Sleep     5s
    Selecionar Pais 
    Sleep    5s



