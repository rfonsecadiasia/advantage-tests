*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Test Cases ***
Buscar Produto Via API
    Create Session    store    Create Session  catalog  https://www.advantageonlineshopping.com/catalog/api/v1
    ${response}=  GET On Session  catalog  /products/search
    Status Should Be    ${response}    200
    ${products}=    Evaluate    [p for p in ${response.json()} if "laptop" in p["title"].lower()]
    Length Should Be Greater Than    ${products}    0
