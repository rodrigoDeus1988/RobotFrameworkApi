*** Settings ***
Documentation      Documentacao da API: http://localhost:5000/api/ui
Resource           ResourceAPI.robot
Suite Stup         Conectar a minha API


*** Test Case ***
CTOO1 - Consultar todos membres (GET)
    consultar membres
