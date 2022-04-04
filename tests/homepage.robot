***Settings***

Documentation   Testes de aceitação em Homepage

Resource    ../resource/base.robot

Test Teardown   Take Screenshot


***Test Cases***
Valida visualizacao imagem de topo
    Abrir Homepage    ${browser}
    Wait For Elements State     xpath=//header/img     visible

Validar visualizacao titulo da homepage
    Abrir Homepage    ${browser}  
    ${text}     Get Text    xpath=//h1
    Log     ${text}
    Wait For Elements State     xpath=//h1[contains(text(), "${text}")]    visible

Validar navegacao para cadastro de entregador
    Abrir Homepage    ${browser}
    ${text}     Get Text    xpath=//a/strong
    Wait For Elements State     xpath=//a/strong[contains(text(), "${text}")]    visible
    Clicar em Cadastre-se
