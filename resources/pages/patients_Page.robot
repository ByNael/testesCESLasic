*** Settings ***
Resource        ../main.robot

*** Variables ***
&{patients_Page}
...            H3_Paciente=//h3[@class="MuiTypography-root MuiTypography-h3 css-1uch2dw-MuiTypography-root"]            ### Teste de pagina carregada
...            Div_Expand_Wrapper_Dados=(//div[@class="MuiAccordionSummary-expandIconWrapper css-yw020d-MuiAccordionSummary-expandIconWrapper"])[1]        ### expandir dados clinicos
...            Div_Expand_Wrapper_Consultas=(//div[@class="MuiAccordionSummary-expandIconWrapper css-yw020d-MuiAccordionSummary-expandIconWrapper"])[2]        ### expandir consultas
...            Div_Expand_Wrapper_ECG=(//div[@class="MuiAccordionSummary-expandIconWrapper css-yw020d-MuiAccordionSummary-expandIconWrapper"])[3]        ### expandir ecg
...            Div_Expand_Wrapper_ECO=(//div[@class="MuiAccordionSummary-expandIconWrapper css-yw020d-MuiAccordionSummary-expandIconWrapper"])[4]        ### expandir eco
...            Div_Expand_Wrapper_Holter=(//div[@class="MuiAccordionSummary-expandIconWrapper css-yw020d-MuiAccordionSummary-expandIconWrapper"])[5]        ### expandir holter
...            P_Multitable_Pagination_Dados=(//p[@class="MuiTablePagination-displayedRows css-levciy-MuiTablePagination-displayedRows"])[1]            ### lista de paginas em dados clinicos
...            P_Multitable_Pagination_Consultas=(//p[@class="MuiTablePagination-displayedRows css-levciy-MuiTablePagination-displayedRows"])[2]            ### lista de paginas em consultas
...            P_Multitable_Pagination_ECG=(//p[@class="MuiTablePagination-displayedRows css-levciy-MuiTablePagination-displayedRows"])[3]            ### lista de paginas em ecg
...            P_Multitable_Pagination_ECO=(//p[@class="MuiTablePagination-displayedRows css-levciy-MuiTablePagination-displayedRows"])[4]            ### lista de paginas em eco
...            P_Multitable_Pagination_Holter=(//p[@class="MuiTablePagination-displayedRows css-levciy-MuiTablePagination-displayedRows"])[5]            ### lista de paginas em holter


*** Keywords ***
Dado que clique no botao de expandir ${wrapper}
    IF             "${wrapper}"=="Dados"
        Wait Until Element Is Visible        ${patients_Page.Div_Expand_Wrapper_Dados}        10s
        Click Element                        ${patients_Page.Div_Expand_Wrapper_Dados}   
        Sleep                                5s                
        ###Element Should Be Visible            ${patients_Page.P_Multitable_Pagination_Dados}        10s
    ELSE IF        "${wrapper}"=="Consultas"
        Wait Until Element Is Visible        ${patients_Page.Div_Expand_Wrapper_Consultas}        10s
        Click Element                        ${patients_Page.Div_Expand_Wrapper_Consultas}                   
        Element Should Be Visible            ${patients_Page.P_Multitable_Pagination_Consultas}        10s
    ELSE IF        "${wrapper}"=="ECG"
        Wait Until Element Is Visible        ${patients_Page.Div_Expand_Wrapper_ECG}        10s
        Click Element                        ${patients_Page.Div_Expand_Wrapper_ECG}                   
        Element Should Be Visible            ${patients_Page.P_Multitable_Pagination_ECG}        10s
    ELSE IF        "${wrapper}"=="ECO"
        Wait Until Element Is Visible        ${patients_Page.Div_Expand_Wrapper_ECO}        10s
        Click Element                        ${patients_Page.Div_Expand_Wrapper_ECO}                   
        Element Should Be Visible            ${patients_Page.P_Multitable_Pagination_ECO}        10s
    ELSE IF        "${wrapper}"=="Holter"
        Wait Until Element Is Visible        ${patients_Page.Div_Expand_Wrapper_Holter}        10s
        Click Element                        ${patients_Page.Div_Expand_Wrapper_Holter}                   
        Element Should Be Visible            ${patients_Page.P_Multitable_Pagination_Holter}        10s
    END
        