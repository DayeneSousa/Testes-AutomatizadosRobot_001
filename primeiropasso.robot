*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${input_name}             id:name
${input_phone}            id:phone
${input_email}            id:email  
${input_password}         id:password
${textarea_address}       id:address
${button_submit}          name:submit
    


*** Keywords ***

abrir site
    Open Browser    https://itera-qa.azurewebsites.net/home/automation    chrome
    
    
Preencher os Campos
    Input Text     ${input_name}            Dayene
    Input Text     ${input_phone}           (81)997782337
    Input Text     ${input_email}           sousadayene@gmail.com    
    Input Text     ${input_password}        654321 
    Input Text     ${textarea_address}      XCXCXCXCXCXCXCXCXCXCXCXCXCXCXCXC
    

Gravar dados 
    Click Element  ${button_submit}           


Fechar navegador
        Close Browser


    


*** Test Cases ***

Cenário 1: Preencher informações do Cadastro - Formulário
    abrir site
    Preencher os Campos
    Gravar dados 
    Sleep     5s
    Fechar navegador
   
    
  