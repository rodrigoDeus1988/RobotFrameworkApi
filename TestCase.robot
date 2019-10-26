*** Settings ***
Documentation      Documentacao da API: http://localhost:5000/api/ui
Resource           ResourceAPI.robot
Suite Setup        Conectar a minha API


*** Test Case ***
CTOO1 - Consultar todos members - (GET)
    consultar members
    conferir status code         404

CTOO2 - Cadastrar membres - (POST) 
    cadastrar um novo members
