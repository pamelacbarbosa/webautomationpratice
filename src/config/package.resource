*** Settings ***
Documentation   Dependências do projeto

#Dependências
Library     SeleniumLibrary

#Keywords
Resource    setup.robot
Resource    ../auto/keywords/home_kws.robot
Resource    ../auto/keywords/login_kws.robot
Resource    ../auto/keywords/my_account_kws.robot
Resource    ../auto/keywords/common_kws.robot

#Elementos
Resource    ../auto/elements/home_ets.resource
Resource    ../auto/elements/login_ets.resource
Resource    ../auto/elements/my_account_ets.resource
