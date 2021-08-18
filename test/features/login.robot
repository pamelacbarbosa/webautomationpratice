*** Settings ***
Documentation   Cenários de testes relacionado ao login da aplicação

Resource        ../../src/config/package.resource

Test Setup  Abrir a sessão
Test Teardown   Encerrar sessão

*** Test Cases ***
Cenario: Login com sucesso 
    Dado que o cliente esteja na tela inicial da aplicação
    E acessar a tela de login
    Quando inserir os dados de login        rasafa9934@ovooovo.com      Teste@123
    E clicar no elemento     ${LOGIN.BOTAO_SIGNIN}
    Então deve visualizar a tela My Account

Cenario: Login com credenciais inválidas
    Dado que o cliente esteja na tela inicial da aplicação
    E acessar a tela de login
    Quando inserir os dados de login        dasosjd@teste.com        rs@1234
    E clicar no elemento        ${LOGIN.BOTAO_SIGNIN}
    Então deve visualizar a mensagem        ${LOGIN.TEXTO_ERRO}     Authentication failed.