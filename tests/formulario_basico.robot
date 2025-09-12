*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${input_userName}                id:userName
${input_userEmail}               id:userEmail
${input_currentAddress}          id:currentAddress
${input_permanentAddress}        id:permanentAddress
${button_submit}                 id:submit


*** Keywords ***
abrir navegador
    Open Browser    https://demoqa.com/text-box    chrome    executable_path=C:/drivers/chromedriver/139/chromedriver.exe
    Maximize Browser Window

preencher campos
    Input Text                ${input_userName}            Juliana Yuri Yamada    
    Sleep                     1s
    Input Text                ${input_userEmail}           teste@gmail.com
    Sleep                     1s
    Input Text                ${input_currentAddress}      Travessa Diagonal, 305
    Sleep                     1s
    Input Text                ${input_permanentAddress}    Rua dos Alfeneiros, 4
    
clicar em submit
    Execute Javascript        window.scrollTo(0, document.body.scrollHeight)
    Click Element             ${button_submit}
    Sleep                     1s

fechar navegador
    Close Browser


*** Test Cases ***
Cenário 1: Preencher formulário
    [Tags]  regressivo
    abrir navegador
    preencher campos
    clicar em submit
    fechar navegador


