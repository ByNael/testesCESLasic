*** Settings ***
Resource             ../../resources/main.robot
Test Setup           Dado que abra o site do CES na pagina patients
Test Teardown        Fechar navegador

*** Test Cases ***
TC01 - testando botao de dados clinicos
    Dado que clique no botao de expandir os dados clinicos do paciente
