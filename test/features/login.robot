*** Settings ***
Documentation   Cenários de testes relacionado ao login da aplicação

Resource        ../../src/config/package.resource

Test Setup Abrir a sessão
Test Teardown Encerrar sessão

*** Test Cases ***
Cenario: Login com sucesso 
    Dado que o cliente esteja na tela inicial da aplicação
    E acessar a tela de login
    Quando realizar login com sucesso
    Então deve visualizar a tela My Account
    Encerrar sessão