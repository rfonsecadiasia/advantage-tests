*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://advantageonlineshopping.com/#/

*** Test Cases ***
Buscar e Adicionar Produto ao Carrinho
    ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${chrome options}    add_argument    --headless
    Call Method    ${chrome options}    add_argument    --no-sandbox
    Call Method    ${chrome options}    add_argument    --disable-dev-shm-usage
    Create WebDriver    Chrome    chrome_options=${chrome options}
    Go To    ${URL}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath=//input[@id='search']
    Input Text    xpath=//input[@id='search']    headphones
    Press Keys    xpath=//input[@id='search']    RETURN
    Wait Until Page Contains    HEADPHONES
    Click Element    xpath=(//button[contains(@class,'product')])[1]
    Click Element    id=checkOutPopUp
    Page Should Contain    CHECKOUT
    Close Browser
