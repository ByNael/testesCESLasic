*** Settings *** 
Resource        ../main.robot

*** Keywords ***
Dado que abra o site do CES na pagina patients
    Open Browser        ${geral.URL}        ${geral.Browser}
    Maximize Browser Window
    Wait Until Element Is Visible        ${patients_Page.H3_Paciente}        10s

Fechar navegador 
    Close Browser
       