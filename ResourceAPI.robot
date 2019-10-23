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
    ${RESPOSTA}        Get Request    Testsapi    teams
    Log                ${RESPOSTA.text}
