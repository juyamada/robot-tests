*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${userName}            //input[@name='T_Login']
${password}            //input[@name='T_Senha']
${button_continue}     //input[@type='submit' and @value=' Continuar » ']

${marca1}              //area[@href='/pePI/jsp/marcas/Pesquisa_num_processo.jsp' and @coords='17,16,243,72']
${marca2}              //a[@class='titulo' and normalize-space(text())='Pesquisa Básica']

${pesquisaAvancada}    //font[normalize-space(text())='Pesquisa  Avançada']

${inputMarca}          //input[@class='basic' and @name='marca']
${button_search}       //input[@class='basic' and @value=' pesquisar » ']


*** Keywords ***
abrir site inpi
    Open Browser    https://busca.inpi.gov.br/pePI/jsp/marcas/Pesquisa_num_processo.jsp    Chrome    executable_path=C:/drivers/chromedriver/139/chromedriver.exe
    Maximize Browser Window

fazer login
    Input Text        ${userName}            Leandro89
    Input Text        ${password}            inpi2023
    Click Element     ${button_continue}

entrar em marcas
    Wait Until Element Is Visible    ${marca1}            
    Click Element                    ${marca1}

    # Troca para a aba correta pelo título
    Switch Window    title=INPI

    Wait Until Element Is Visible    ${marca2}            
    Click Element                    ${marca2}

    Wait Until Element Is Visible    ${pesquisaAvancada}      
    Click Element                    ${pesquisaAvancada}

buscar marca
    Wait Until Element Is Visible    ${inputMarca}
    Input Text        ${inputMarca}         moscapet


*** Test Cases ***
Cenário 1: Verificar atualizações inpi
    abrir site inpi
    fazer login
    entrar em marcas
    buscar marca
