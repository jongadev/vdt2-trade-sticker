*** Settings ***
Documentation       Login tests

Resource            ${EXECDIR}/resources/main.resource

Test Setup          Start Test
Test Teardown       Finish Test


*** Test Cases ***

Deve logar com sucesso
    Go To Login Page
    Submit Credentials      papito@gmail.com    vaibrasil
    User logged In

Não deve logar com senha incorreta
    #[Tags]          inv_pass
    Go To Login Page
    Submit Credentials          papito@gmail.com    abc123
    Toast Message Should Be     Credenciais inválidas, tente novamente!
    #Thinking Time
    Sleep                       1
   












    
  



