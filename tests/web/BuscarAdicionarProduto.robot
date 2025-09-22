*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://advantageonlineshopping.com/#/

*** Test Cases ***
Buscar e Adicionar Produto ao Carrinho
    Open Browser    ${URL}    chrome    options=add_argument(--headless);add_argument(--no-sandbox);add_argument(--disable-dev-shm-usage)
    Maximize Browser Window
    Wait Until Page Contains Element    xpath=//input[@id='search']
    Input Text    xpath=//input[@id='search']    headphones
    Press Keys    xpath=//input[@id='search']    RETURN
    Wait Until Page Contains    HEADPHONES
    Click Element    xpath=(//button[contains(@class,'product')])[1]
    Click Element    id=checkOutPopUp
    Page Should Contain    CHECKOUT
    Close Browser
