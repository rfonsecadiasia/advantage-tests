*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Test Cases ***
Buscar Produto Via API
    Create Session  catalog  https://www.advantageonlineshopping.com/catalog/api/v1
    ${response}=  GET On Session  catalog  /products/search
    ${status}=    Get From Dictionary    ${response}    status_code
    ${body}=      Get From Dictionary    ${response}    json()
    Should Be Equal As Integers    ${status}    200
    Log    Produto encontrado: ${body}
