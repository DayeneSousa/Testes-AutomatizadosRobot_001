*** Settings ***
Library  SeleniumLibrary

*** Variables ***



*** Keywords ***

abrir site
    Open Browser    https://itera-qa.azurewebsites.net/home/automation    chrome
    
    
Informa dados
   Click Element     //label[@for='serenity']
       


Fechar navegador
    Close Browser

   

*** Test Cases ***

Cenário 1: Preencher mais dados 
    abrir site
    Informa dados
    Sleep     5s
    Fechar navegador
   
    
  