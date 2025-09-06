*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${first_name}                    id: firstName
${last_name}                     id: lastName
${email}                         id: userEmail
##${gender}                        //label[@for='gender-radio-3']  #other
${mobile_number}                 id: userNumber
${date_of_birth}                 id: dateOfBirthInput
${subjects}                      id: subjectsInput  #campo autocomplete
${hobbies}                       xpath=//label[@for='hobbies-checkbox-1']  #sports
${picture}                       id: uploadPicture
${current_address}               id: currentAddress 
${state}                         id: react-select-3-input  #campo estado
${city}                          id: react-select-4-input  #campo city
${button_submit}                 id: submit

*** Keywords ***
abrir site
    Open Browser                 https://demoqa.com/automation-practice-form    chrome    executable_path=C:/drivers/chromedriver/139/chromedriver.exe
    Maximize Browser Window

preencher campos
    Input Text                    ${first_name}        Leandro
    Input Text                    ${last_name}         Fonseca
    Input Text                    ${email}             teste@teste.com.br
    
    Execute JavaScript            document.querySelector("label[for='gender-radio-3']").click()

    Input Text                    ${mobile_number}     11988776655
    Input Text                    ${subjects}          Biology
    Press Keys                    ${subjects}          RETURN
    
    Click Element                 ${hobbies}           
    Choose File                   ${picture}           C:/Users/jysya/robot-tests/resources/upload_test.png
    Input Text                    ${current_address}   Rua xpto   
    Input Text                    ${state}             Haryana  
    Press Keys                    ${state}             RETURN      
    Input Text                    ${city}              Panipat
    Press Keys                    ${city}              RETURN
    


clicar em submit
    Scroll Element Into View      ${button_submit}
    Click Button                  ${button_submit}
    

fechar navegador
    Close Browser

*** Test Cases ***
Cenário 1: Preencher formulário
        abrir site
        preencher campos
        clicar em submit
        fechar navegador
