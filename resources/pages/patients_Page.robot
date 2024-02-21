*** Settings ***
Resource        ../main.robot

*** Variables ***
&{patients_Page}
...            H3_Paciente=//h3[@class="MuiTypography-root MuiTypography-h3 css-1uch2dw-MuiTypography-root"]            ### Teste de pagina carregada
...            Div_Expand_Wrapper_Dados=(//div[@class="MuiAccordionSummary-expandIconWrapper css-yw020d-MuiAccordionSummary-expandIconWrapper"])[1]/*[@id="accordion-expand-button"]        ### expandir dados clinicos
...            Div_Expand_Wrapper_Consultas=(//div[@class="MuiAccordionSummary-expandIconWrapper css-yw020d-MuiAccordionSummary-expandIconWrapper"])[2]/*[@id="accordion-expand-button"]        ### expandir consultas
...            Div_Expand_Wrapper_ECG=(//div[@class="MuiAccordionSummary-expandIconWrapper css-yw020d-MuiAccordionSummary-expandIconWrapper"])[3]/*[@id="accordion-expand-button"]        ### expandir ecg
...            Div_Expand_Wrapper_ECO=(//div[@class="MuiAccordionSummary-expandIconWrapper css-yw020d-MuiAccordionSummary-expandIconWrapper"])[4]/*[@id="accordion-expand-button"]        ### expandir eco
...            Div_Expand_Wrapper_Holter=(//div[@class="MuiAccordionSummary-expandIconWrapper css-yw020d-MuiAccordionSummary-expandIconWrapper"])[5]/*[@id="accordion-expand-button"]        ### expandir holter
...            P_Multitable_Pagination_Dados=(//p[@class="MuiTablePagination-displayedRows css-levciy-MuiTablePagination-displayedRows"])[1]            ### lista de paginas em dados clinicos
...            P_Multitable_Pagination_Consultas=(//p[@class="MuiTablePagination-displayedRows css-levciy-MuiTablePagination-displayedRows"])[2]            ### lista de paginas em consultas
...            P_Multitable_Pagination_ECG=(//p[@class="MuiTablePagination-displayedRows css-levciy-MuiTablePagination-displayedRows"])[3]            ### lista de paginas em ecg
...            P_Multitable_Pagination_ECO=(//p[@class="MuiTablePagination-displayedRows css-levciy-MuiTablePagination-displayedRows"])[4]            ### lista de paginas em eco
...            P_Multitable_Pagination_Holter=(//p[@class="MuiTablePagination-displayedRows css-levciy-MuiTablePagination-displayedRows"])[5]            ### lista de paginas em holter


*** Keywords ***
Dado que clique no botao de expandir ${wrapper}
        Wait Until Element Is Visible        ${patients_Page.Div_Expand_Wrapper_${wrapper}}        10s
        Sleep                                10s
        Click Element                        ${patients_Page.Div_Expand_Wrapper_${wrapper}}   
        Wait Until Element Is Visible        ${patients_Page.P_Multitable_Pagination_${wrapper}}        10s          
        Element Should Be Visible            ${patients_Page.P_Multitable_Pagination_${wrapper}}