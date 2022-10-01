*** Setting ***

Documentation       Login Page

Library             Browser

*** Keywords ***
Go To Login Page
   
    New Page        https://trade-sticker-dev.vercel.app

Submit Credentials 
    [Arguments]      ${user}
    Fill Text        css=input[name=email]          ${user}[email]
    Fill Text        css=input[name=password]       ${user}[password]
    Click            css=button >> text=Entrar

Toast Message Should Be
    [Arguments]      ${expected_message}

    ${locator}
    ...              Set Variable
    ...              css=.Toastify__toast-body div >> text=${expected_message}

   Wait For Elements State     ${locator}      visible     5