*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Abrir Google
    Open Browser    https://www.google.com    chrome    executable_path=C:/drivers/chromedriver/139/chromedriver.exe
    Title Should Be    Google
    Close Browser
