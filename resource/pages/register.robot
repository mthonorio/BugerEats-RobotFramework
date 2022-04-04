***Settings***

Documentation   Acoes da pagina de Cadastro de Entregador

***Keywords***
Input FullName
    [Arguments]    ${full_name}
    Fill Text    css=input[name="name"]    ${full_name}

Input CPF
    [Arguments]    ${cpf}
    Fill Text    css=input[name="cpf"]    ${cpf}

Input Email
    [Arguments]    ${email}
    Fill Text    css=input[name="email"]    ${email}

Input Whatsapp
    [Arguments]    ${wpp}
    Fill Text    css=input[name="whatsapp"]    ${wpp}

Input CEP
    [Arguments]    ${cep}
    Fill Text    css=input[name="postalcode"]    ${cep}

Input Number
    [Arguments]    ${number}
    Fill Text    css=input[name="address-number"]    ${number}

Input Details
    [Arguments]    ${details}
    Fill Text    css=input[name="address-details"]    ${details}

Deliver Method Selector
    [Arguments]    ${vehicle}
    Click    xpath=//ul[@class="delivery-method"]/li/span[contains(text(), "${vehicle}")]

Submit CEP
    Click   css=input[type="button"]

Submit Credentials
    Click    css=button[class="button-success"]
