*** Settings ***
Documentation       Login tests

Resource            ${EXECDIR}/resources/main.resource

Test Setup          Start Test
Test Teardown       Finish Test


*** Test Cases ***

Deve logar com sucesso
    ${user}              Factory User     login
    Go To Login Page
    Submit Credentials          ${user}
    User logged In

Não deve logar com senha incorreta
    ${user}              Factory User     Incorrect_password
    Go To Login Page
    Submit Credentials          ${user}
    Toast Message Should Be     Credenciais inválidas, tente novamente!
    #Thinking Time
    Sleep                       1

Deve exibir notificação toaster se a senha não for preenchida
    ${user}              Factory User     Password_not_informed
    Go To Login Page
    Submit Credentials          ${user}
    Toast Message Should Be     Por favor, informe a sua senha secreta!
    #Thinking Time
    Sleep                       1

Deve exibir notificação toaster se o email não for preenchido
    ${user}              Factory User     Email_not_informed
    Go To Login Page
    Submit Credentials          ${user}     
    Toast Message Should Be     Por favor, informe o seu email!
    #Thinking Time
    Sleep                       1


Deve exibir notificação toaster se email e senha não for preenchida
    ${user}              Factory User     Email_and_password_not_provided
    Go To Login Page
    Submit Credentials          ${user}     
    Toast Message Should Be     Por favor, informe suas credenciais!
    #Thinking Time
    Sleep                       1












    
  



