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
Cadastrar um novo members
    ${HEADERS}     Create Dictionary      content-type=application/json
    ${RESPOSTA}    Post Request           Testsapi    teams
    ...                                   data={{"creator": 1,"description": "Teste_1","id": "1","members": [{}],"name": "TI","profile_photo": "Perfil"}}
    ...                                   headers=${HEADERS}
    Log                                   ${RESPOSTA.text}
    Set Test Variable                     ${RESPOSTA}

Consultar members
    ${RESPOSTA}             Get Request    Testsapi    teams
    Log                     ${RESPOSTA.text}
    Set Test Variable       ${RESPOSTA}

Consultar por id "${ID_MEMBERS}"
    ${RESPOSTA}             Get Request    Testsapi    teams/${ID_MEMBERS}
    Log                     ${RESPOSTA.text}
    Set Test Variable       ${RESPOSTA}


Alterar um novo members "${ID_MEMBERS}"
    ${HEADERS}     Create Dictionary      content-type=application/json
    ${RESPOSTA}    Put Request            Testsapi    teams/${ID_MEMBERS}
    ...                                   data={{"Name": "teste3"}}
    ...                                   headers=${HEADERS}
    Log                                   ${RESPOSTA.text}
    Set Test Variable                     ${RESPOSTA}

Deletar por id "${ID_MEMBERS}"
    ${HEADERS}     Create Dictionary      content-type=application/json
    ${RESPOSTA}    Delete Request         Testsapi    teams/${ID_MEMBERS}
    ...                                   headers=${HEADERS}
    Log                                   ${RESPOSTA.text}
    Set Test Variable                     ${RESPOSTA}  

###Conferencias
conferir status code
  [Arguments]                   ${STATUSCODE_DESEJADO}
  Should Be Equal As Strings    ${RESPOSTA.status_code}    ${STATUSCODE_DESEJADO}
