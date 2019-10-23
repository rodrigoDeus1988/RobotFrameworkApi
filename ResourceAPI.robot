*** Settings ***
Documentation      Documentacao da API: https://localhost:5000/api/ui
Library            RequestsLibrary
Library            Collections


*** Variables ***
${URL_API}               https://localhost:5000/api/



*** Keywords ***
### SETUP E TEARDOWNS ###
Conectar a minha API
      Create Session    Testsapi    ${URL_API}


###Acoes ###
consultar membres
    ${RESPOSTA}        Get Request    Testsapi    teams
    Log                ${RESPOSTA.text}
