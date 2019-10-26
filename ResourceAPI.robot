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
cadastrar um novo members
    ${HEADERS}     Create Dictionary      content-type=application/json
    ${RESPOSTA}    Post Request           Testsapi    teams
    ...                                   data={{"creator": 1,"description": "Teste_1","id": "1","members": [{}],"name": "TI","profile_photo": "Perfil"}}
    ...                                   headers=${HEADERS}
    Log                     ${RESPOSTA.text}
    Set Test Variable       ${RESPOSTA}

consultar members
    ${RESPOSTA}             Get Request    Testsapi    teams
    Log                     ${RESPOSTA.text}
    Set Test Variable       ${RESPOSTA}


###Conferencias
conferir status code
  [Arguments]                   ${STATUSCODE_DESEJADO}
  Should Be Equal As Strings    ${RESPOSTA.status_code}    ${STATUSCODE_DESEJADO}
