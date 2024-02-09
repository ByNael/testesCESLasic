*** Settings ***
Resource        ../main.robot

*** Variables ***
&{patients_Page}
...            H3_Paciente=//h3[@class="MuiTypography-root MuiTypography-h3 css-1uch2dw-MuiTypography-root"]            ### Teste de pagina carregada
...            Div_Expand_Wrapper=(//div[@class="MuiAccordionSummary-expandIconWrapper css-yw020d-MuiAccordionSummary-expandIconWrapper"])[1]        ### expandir dados clinicos
...            P_Multitable_Pagination=(//p[@class="MuiTablePagination-displayedRows css-levciy-MuiTablePagination-displayedRows"])[1]            ### lista de paginas em dados clinicos

*** Keywords ***
Dado que clique no botao de expandir os dados clinicos do paciente
    Wait Until Element Is Visible        ${patients_Page.Div_Expand_Wrapper}        10s
    Click Element                        ${patients_Page.Div_Expand_Wrapper}                   
    Element Should Be Visible            ${patients_Page.P_Multitable_Pagination}        10s