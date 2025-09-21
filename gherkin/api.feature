Feature: Buscar produtos por nome via API

  Scenario: Buscar produto existente
    Given que eu realizo uma requisição GET para a API de produtos com o nome "laptop"
    Then a resposta deve conter pelo menos um produto com o nome "laptop"
