*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${variavel1}    teste
${variavel2}    12345

*** Keywords ***
abrir site do google
    Open Browser    https://www.google.com    chrome    executable_path=C:/drivers/chromedriver/139/chromedriver.exe

abrir site da iterasys
    Open Browser    https://iterasys.com.br/pt    chrome    executable_path=C:/drivers/chromedriver/139/chromedriver.exe

abrir site da cnn
    Open Browser    https://www.cnnbrasil.com.br/    chrome    executable_path=C:/drivers/chromedriver/139/chromedriver.exe

fechar browser
    Close Browser

*** Test Cases ***
Cenário 1: Teste abrir site do google
    [Tags]  regressivo
    abrir site do google
    fechar browser

Cenário 2: Teste abrir site da iterasys
    abrir site da iterasys  
    fechar browser
      
Cenário 3: Teste abrir site da cnn
    [Tags]  regressivo
    abrir site da cnn
    fechar browser

