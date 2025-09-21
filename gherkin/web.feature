Feature: Buscar e adicionar produto ao carrinho

  Scenario: Buscar produto e validar no carrinho
    Given que o usuário acessa o site Advantage Online Shopping
    When ele busca por "headphones"
    And adiciona o produto ao carrinho
    Then o produto deve aparecer na tela de pagamento
