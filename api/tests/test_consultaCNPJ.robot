*** Settings ***
Library  RequestsLibrary

*** Variables ***
${BASE_URL}  https://www.receitaws.com.br/v1/cnpj

*** Test Cases ***
Testar API de CNPJ
    [Documentation]  Testa a API de CNPJ para um CNPJ específico
    Create Session  api_session  ${BASE_URL}
    ${response}=  GET On Session  api_session  /09464032000112
    Should Be Equal As Strings     ${response.status_code}   200