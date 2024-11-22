** Settings **
Library  SeleniumLibrary

** Test Cases **
Scenario: Novo usuário se registra com dados válidos Feature:Registro de usuário na EDX

    Given O usuário está na página de registro da EDX
    When remove os cookies da tela
    And insere o nome completo “Juliana Tyelle Pires da Silva”
    And insere o email “julianatyelle.pires@gmail.com”
    And insere o nome de usuário público “Juliana Tyelle”
    And insere uma senha alfanumérica
    And clicar no botão “Criar uma conta de graca”

** Keywords **

Given O usuário está na página de registro da EDX
    Open Browser    https://authn.edx.org/register    chrome
    Wait Until Element Is Visible    id:name    10s
When remove os cookies da tela
    Wait Until Element Is Visible    xpath://*[@id="onetrust-close-btn-container"]/button    10s
    Click Element    xpath://*[@id="onetrust-close-btn-container"]/button
And insere o nome completo “Juliana Tyelle Pires da Silva”
    Input Text    id:name    Juliana Tyelle Pires da Silva
And insere o email “julianatyelle.pires@gmail.com”
    Input Text    id:email    julianatyelle.pires@gmail.com
And insere o nome de usuário público “Juliana Tyelle”
    Input Text    id:username    Juliana Tyelle
And insere uma senha alfanumérica
    Input Password    id:password    testeUCB2024@
And clicar no botão “Criar uma conta de graca”
    Scroll Element Into View    id:register-user
    Click Element    id:register-user
