*** Settings ***
Documentation      Documentacao da API: http://localhost:5000/api/ui
Resource           ResourceAPI.robot
Suite Setup        Conectar a minha API


*** Test Case ***

CTO1 - Cadastrar membres - (POST)
    cadastrar um novo members

CTO2 - Consultar todos members - (GET)
    consultar members
    conferir status code         404

CTO3 - Consultar members ID - (GET)
    consultar por id "1"  
