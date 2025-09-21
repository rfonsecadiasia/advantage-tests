# Testes Automatizados - Advantage Online Shopping

Projeto de automação de testes **Web e API** utilizando o **Robot Framework** com sintaxe Gherkin.

## Tecnologias
- Python
- Robot Framework
- SeleniumLibrary (para Web)
- RequestsLibrary (para API)
- Faker (geração de dados)

## Estrutura de Testes
.
├── gherkin/
│ ├── api.feature
│ └── web.feature
├── tests/
│ ├── api/
│ └── web/
├── resources/
│ ├── keywords/
│ └── variables/
└── requirements.txt


## como executar localmente

1. Clone o repositório:
   ```bash
   git clone https://github.com/seu-usuario/advantage-tests.git

2.Instale as dependências:
   pip install -r requirements.txt

3.Execute os testes:
robot tests/


