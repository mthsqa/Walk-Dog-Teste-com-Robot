*** Settings ***

Resource        ${EXECDIR}/resources/pages/base.resource

Test Setup        Start session
Test Teardown     Finish session

*** Test Cases ***
Cadastro de Dog Walkers com Sucesso
    [Tags]             happy_path
    [Documentation]         Cadastro de Dog Walkers com sucesso

    Fill signup form        Matheus Silva        matheus-qa@example.com        00000014141        04534011        1000        Apt 101        
    Submit signup form
    Popup have text         Recebemos o seu cadastro e em breve retornaremos o contato.


*** Test Cases ***  
CPF Incorreto  
    [Tags]                       cpf_inv  
    [Documentation]         Teste de CPF incorreto  

    Fill signup form        Matheus Silva        matheus-qa@example.com        00000014141a        04534011        1000        Apt 101      
    Submit signup form
    Alert have text         CPF inválido 


Email Incorreto  
    [Tags]                       email_inv  
    [Documentation]         Teste de E-mail incorreto  

    Fill signup form        Matheus Silva        matheus-qa!example.com        00000014141        04534011        1000        Apt 101   
    Submit signup form  
    Alert have text         Informe um email válido

  
Campos Obrigatórios  
    [Tags]                       required
    [Documentation]         Teste de Campos Obrigatórios  
    
    Submit signup form 
    
    Alert have text         Informe o seu nome completo
    Alert have text         Informe o seu melhor email
    Alert have text         Informe o seu CPF
    Alert have text         Informe o seu CEP
    Alert have text         Informe um número maior que zero