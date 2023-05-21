*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${input_female}     id:female
${input_fema}       id:fema

${input_monday}        id:monday
${input_tuesday}       id:tuesday
${input_wednesday}     id:wednesday
${input_thursday}      id:thursday
${input_friday}        id:friday
${input_saturday}      id:saturday
${input_sunday}        id:sunday



*** Keywords ***

Abrir Site    
    Open Browser    https://itera-qa.azurewebsites.net/home/automation    chrome

Selecionar o Gênero
    Click Element   id:female

informar melhor dia da semana
    Click Element       ${input_monday} 

 fechar site 

    Close Browser    



*** Test Cases ***
1 Cenário: para pratica de seleção
    Abrir Site
    Selecionar o Gênero
    Sleep    5s
    informar melhor dia da semana
    Sleep    5s
    fechar site 
    
