*** Settings ***
Documentation      Documentacao da API: http://localhost:5000/api/ui
Resource           ResourceAPI.robot
Suite Setup        Conectar a minha API


*** Test Case ***

CTO1 - Cadastrar membres - (POST)
    Cadastrar um novo members

CTO2 - Consultar todos members - (GET)
    Consultar members
    Conferir status code         404

CTO3 - Consultar members ID - (GET)
    Consultar por id "1"

CTO4 - Alterar membres - (PUT) 
    Alterar um novo members "1"
