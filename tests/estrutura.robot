*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${variavel1}    teste
${variavel2}    12345

*** Keywords ***
abrir site do google
    Open Browser    https://www.google.com    chrome    executable_path=C:/drivers/chromedriver/139/chromedriver.exe

fechar browser
    Close Browser

abrir site da globo
    Open Browser    https://www.globo.com/    chrome    executable_path=C:/drivers/chromedriver/139/chromedriver.exe

*** Test Cases ***
Cenário 1: Teste abrir site do google
    abrir site do google
    fechar browser

Cenário 2: Teste abrir site da globo
    abrir site da globo   
    fechar browser
      
