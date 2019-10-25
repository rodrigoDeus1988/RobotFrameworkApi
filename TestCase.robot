*** Settings ***
Documentation      Documentacao da API: http://localhost:5000/api/ui
Resource           ResourceAPI.robot
Suite Setup        Conectar a minha API


*** Test Case ***
CTOO1 - Consultar todos membres (GET)
    consultar membres
    conferir status code         404

#CTOO2 - Cadastrar membres
#    cadastrar um novo membres
