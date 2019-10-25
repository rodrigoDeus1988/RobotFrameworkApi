*** Settings ***
Documentation      Documentacao da API: https://localhost:5000/api
Library            RequestsLibrary
Library            Collections


*** Variables ***
${URLAPI}               http://localhost:5000/api/


*** Keywords ***
### SETUP E TEARDOWNS ###
Conectar a minha API
   Create Session      Testsapi    ${URLAPI}


###Acoes ###
consultar membres
    ${RESPOSTA}             Get Request    Testsapi    teams
    Log                     ${RESPOSTA.text}
    Set Test Variable       ${RESPOSTA}


###Conferencias
conferir status code
  [Arguments]              ${STATUSCODE_DESEJADO}
  Should Be Equal As Strings    ${RESPOSTA.status_code}    ${STATUSCODE_DESEJADO}
