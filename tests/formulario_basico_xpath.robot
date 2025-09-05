*** Settings ***
Library       SeleniumLibrary


*** Variables ***
${userName}                    //input[@id='userName']
${email}                       //input[@id='userEmail']
${currentAddress}              //textarea[@id='currentAddress']
${permanetAddress}             //textarea[@id='permanentAddress']
${submit}                      //button[@id='submit']

***Keywords***
abrir navegador
    Open Browser                https://demoqa.com/text-box    Chrome      executable_path=C:/drivers/chromedriver/139/chromedriver.exe
    Maximize Browser Window      

preencher campos
    Input Text                 ${userName}            Olívia Marques
    Input Text                 ${email}               emailteste@gmail.com
    Input Text                 ${currentAddress}      Rua Sabiá, 250
    Input Text                 ${currentAddress}      CEP:05625-000
    Input Text                 ${permanetAddress}     Rua das flores, 586


clicar em submit
    Scroll Element Into View    ${submit}
    Click Button                ${submit}


fechar navegador
    Close Browser

*** Test Cases ***
Cenário 1: Preencher formulário
    abrir navegador
    preencher campos
    clicar em submit
    fechar navegador


