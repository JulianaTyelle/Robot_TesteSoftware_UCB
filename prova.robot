** Settings **
Library  SeleniumLibrary

** Test Cases **
Scenario: Novo usuário se registra com dados válidos Feature:Registro de usuário na Automation Demo Site

    Given O usuário está na página de registro da Automation Demo Site
    When insere o primeiro nome “Juliana”
    And insere o último nome "Silva"
    And insere o endereço "QS 07, Lote 01, Taguatinga Sul - Taguatinga, Brasília - DF, 71966-700"
    And insere o email “juliana.tsilva@a.ucb.br”
    And insere o numero de telefone "6133569000"
    And seleciona um genero "FeMale"
    And seleciona um ou mais hobbies "Movies"
    And escolhe um idioma "Portuguese"
    And escolhe uma habilidade "Python"
    And seleciona um pais "Australia"
    And escolhe o ano de nascimento "1980"
    And escolhe o mes de nascimento "April"
    And escolhe o dia de nascimento "11"
    And insere uma senha alfanumérica
    And confirma a senha alfanumérica
    And clica no botão “Submit”
    Then fecha navegador

** Keywords **

Given O usuário está na página de registro da Automation Demo Site
    Open Browser    https://demo.automationtesting.in/Register.html    chrome
    Maximize Browser Window
    Wait Until Element Is Visible    //*[@id="basicBootstrapForm"]/div[1]/div[1]/input    10s
When insere o primeiro nome “Juliana”
    Input Text    //*[@id="basicBootstrapForm"]/div[1]/div[1]/input    Juliana
And insere o último nome "Silva"
    Input Text    //*[@id="basicBootstrapForm"]/div[1]/div[2]/input    Silva
And insere o endereço "QS 07, Lote 01, Taguatinga Sul - Taguatinga, Brasília - DF, 71966-700"
    Input Text    //*[@id="basicBootstrapForm"]/div[2]/div/textarea    QS 07, Lote 01, Taguatinga Sul - Taguatinga, Brasília - DF, 71966-700
And insere o email “juliana.tsilva@a.ucb.br”
    Input Text    //*[@id="eid"]/input    juliana.tsilva@a.ucb.br
And insere o numero de telefone "6133569000"
    Input Text    //*[@id="basicBootstrapForm"]/div[4]/div/input    6133569000
And seleciona um genero "FeMale"
    Select Radio Button    radiooptions    FeMale
And seleciona um ou mais hobbies "Movies"
    Select Checkbox    //*[@id="checkbox2"]
And escolhe um idioma "Portuguese"
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight);
    Sleep    1s
    Click Element    id:msdd
    Click Element    xpath://a[text()="Portuguese"]
    Click Element    xpath=//body
And escolhe uma habilidade "Python"
    Click Element    id:Skills
    Click Element    //*[@id="Skills"]/option[61]
And seleciona um pais "Australia"
    Click Element    //*[@id="basicBootstrapForm"]/div[10]/div/span/span[1]/span
    Click Element    xpath=//li[text()="Australia"]
And escolhe o ano de nascimento "1980"
    Click Element    id:yearbox
    Click Element    //*[@id="yearbox"]/option[66]
And escolhe o mes de nascimento "April"
    Click Element    id:basicBootstrapForm
    Click Element   //*[@id="basicBootstrapForm"]/div[11]/div[2]/select/option[5]
And escolhe o dia de nascimento "11"
    Click Element    id:daybox
    Click Element    //*[@id="daybox"]/option[12]
And insere uma senha alfanumérica
    Input Password    id:firstpassword    provaUCB@2024
And confirma a senha alfanumérica
    Input Password    id:secondpassword    provaUCB@2024
And clica no botão “Submit”
    Click Element    id:submitbtn
Then fecha navegador
    Close Browser