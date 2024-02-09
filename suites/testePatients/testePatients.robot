*** Settings ***
Resource             ../../resources/main.robot
Test Setup           Dado que abra o site do CES na pagina patients
Test Teardown        Fechar navegador

*** Test Cases ***
TC01 - testando botões de expandir
    Dado que clique no botao de expandir Dados
