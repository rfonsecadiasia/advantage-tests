*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Test Cases ***
Buscar Produto Via API
    Create Session    store    https://api.storerestapi.com
    ${response}=    Get Request    store    /products
    Status Should Be    ${response}    200
    ${products}=    Evaluate    [p for p in ${response.json()} if "laptop" in p["title"].lower()]
    Length Should Be Greater Than    ${products}    0
