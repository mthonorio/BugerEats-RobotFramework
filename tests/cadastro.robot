***Settings***

Documentation   Testes de aceitação em Homepage

Resource    ../resource/base.robot

Test Teardown   Take Screenshot

***Variables***
${nome}        FakerLibrary.Name
${cpf}         FakerLibrary.cpf
${email}       FakerLibrary.Email
${cep}         FakerLibrary.postcode
${celular}     FakerLibrary.random_number       digits=11        fix_len=True
${numero}      FakerLibrary.random_number       digits=4        fix_len=True
${details}     FakerLibrary.word

***Test Cases***
# Validar cadastro de entregador 
#     Abrir Homepage    ${browser}
#     Clicar em Cadastre-se

#     Input FullName  ${nome}
#     Input CPF       ${cpf}
#     Input Email     ${email}
#     Input Whatsapp  ${celular}
#     Input CEP       ${cep}
#     Submit CEP

#     Input Numero    ${numero}
#     Input Details   ${details}

#     Deliver Method Selector  Moto
#     Upload File By Selector     css=input[accept^="image"]     ${cnh_PATH}

#     Submit Credentials
    
Validar mensagem de preenchimento de nome completo obrigatório
    ${nome}        FakerLibrary.Name
    ${cpf}         FakerLibrary.cpf
    ${email}       FakerLibrary.Email
    ${cep}         FakerLibrary.postcode
    ${celular}     FakerLibrary.random_number       digits=11        fix_len=True
    ${numero}      FakerLibrary.random_number       digits=4        fix_len=True
    ${details}     FakerLibrary.word
    
    Open Homepage    ${browser}
    Click in Register

    Input CPF       ${cpf}
    Input Email     ${email}
    Input Whatsapp  ${celular}
    Input CEP       ${cep}
    Submit CEP

    Input Number    ${numero}
    Input Details   ${details}

    Deliver Method Selector     Moto

    Submit Credentials

    Scroll To     css=input[name="name"]
    Wait For Elements State     xpath=//span[@class="alert-error"][contains(text(), "É necessário informar o nome")]    visible

Validar mensagem de preenchimento de CPF obrigatório
    ${nome}        FakerLibrary.Name
    ${cpf}         FakerLibrary.cpf
    ${email}       FakerLibrary.Email
    ${cep}         FakerLibrary.postcode
    ${celular}     FakerLibrary.random_number       digits=11        fix_len=True
    ${numero}      FakerLibrary.random_number       digits=4        fix_len=True
    ${details}     FakerLibrary.word
    
    Open Homepage    ${browser}
    Click in Register

    Input FullName  ${nome}
    Input Email     ${email}
    Input Whatsapp  ${celular}
    Input CEP       ${cep}
    Submit CEP

    Input Number    ${numero}
    Input Details   ${details}

    Deliver Method Selector     Moto

    Submit Credentials

    Scroll To     css=input[name="cpf"]
    Wait For Elements State     xpath=//span[@class="alert-error"][contains(text(), "É necessário informar o CPF")]    visible

Validar mensagem de preenchimento de E-mail obrigatório
    ${nome}        FakerLibrary.Name
    ${cpf}         FakerLibrary.cpf
    ${email}       FakerLibrary.Email
    ${cep}         FakerLibrary.postcode
    ${celular}     FakerLibrary.random_number       digits=11        fix_len=True
    ${numero}      FakerLibrary.random_number       digits=4        fix_len=True
    ${details}     FakerLibrary.word
    
    Open Homepage    ${browser}
    Click in Register

    Input FullName  ${nome}
    Input CPF       ${cpf}
    Input Whatsapp  ${celular}
    Input CEP       ${cep}
    Submit CEP

    Input Number    ${numero}
    Input Details   ${details}

    Deliver Method Selector     Moto

    Submit Credentials

    Scroll To     css=input[name="cpf"]
    Wait For Elements State     xpath=//span[@class="alert-error"][contains(text(), "É necessário informar o email")]    visible

Validar mensagem de preenchimento de CEP válido
    ${nome}        FakerLibrary.Name
    ${cpf}         FakerLibrary.cpf
    ${email}       FakerLibrary.Email
    ${cep}         FakerLibrary.postcode
    ${celular}     FakerLibrary.random_number       digits=11        fix_len=True
    ${numero}      FakerLibrary.random_number       digits=4        fix_len=True
    ${details}     FakerLibrary.word
    
    Open Homepage    ${browser}
    Click in Register

    Input FullName  ${nome}
    Input CPF       ${cpf}
    Input Whatsapp  ${celular}
    Input Email     ${email}
    Submit CEP

    Scroll To     css=input[name="postalcode"]
    Wait For Elements State     xpath=//span[@class="alert-error"][contains(text(), "Informe um CEP válido")]    visible

Validar mensagem de preenchimento de Número de Endereço obrigatório
    ${nome}        FakerLibrary.Name
    ${cpf}         FakerLibrary.cpf
    ${email}       FakerLibrary.Email
    ${cep}         FakerLibrary.postcode
    ${celular}     FakerLibrary.random_number       digits=11        fix_len=True
    ${numero}      FakerLibrary.random_number       digits=4        fix_len=True
    ${details}     FakerLibrary.word
    
    Open Homepage    ${browser}
    Click in Register

    Input FullName  ${nome}
    Input CPF       ${cpf}
    Input Whatsapp  ${celular}
    Input Email     ${email}
    Input CEP       ${cep}
    Submit CEP

    Input Details   ${details}

    Deliver Method Selector     Moto

    Submit Credentials

    Scroll To     css=input[name="postalcode"]
    Wait For Elements State     xpath=//span[@class="alert-error"][contains(text(), "É necessário informar o número do endereço")]    visible

Validar mensagem de preenchimento de Método de Entrega obrigatório
    ${nome}        FakerLibrary.Name
    ${cpf}         FakerLibrary.cpf
    ${email}       FakerLibrary.Email
    ${cep}         FakerLibrary.postcode
    ${celular}     FakerLibrary.random_number       digits=11        fix_len=True
    ${numero}      FakerLibrary.random_number       digits=4        fix_len=True
    ${details}     FakerLibrary.word
    
    Open Homepage    ${browser}
    Click in Register

    Input FullName  ${nome}
    Input CPF       ${cpf}
    Input Email     ${email}
    Input Whatsapp  ${celular}
    Input CEP       ${cep}
    Submit CEP

    Input Number    ${numero}
    Input Details   ${details}

    Submit Credentials

    Scroll To     css=ul[class="delivery-method"]
    Wait For Elements State     xpath=//span[@class="alert-error"][contains(text(), "Selecione o método de entrega")]    visible

Validar mensagem de preenchimento de Foto de CNH obrigatório
    ${nome}        FakerLibrary.Name
    ${cpf}         FakerLibrary.cpf
    ${email}       FakerLibrary.Email
    ${cep}         FakerLibrary.postcode
    ${celular}     FakerLibrary.random_number       digits=11        fix_len=True
    ${numero}      FakerLibrary.random_number       digits=4        fix_len=True
    ${details}     FakerLibrary.word
    
    Open Homepage    ${browser}
    Click in Register

    Input FullName  ${nome}
    Input CPF       ${cpf}
    Input Email     ${email}
    Input Whatsapp  ${celular}
    Input CEP       ${cep}
    Submit CEP

    Input Number    ${numero}
    Input Details   ${details}

    Deliver Method Selector     Moto

    Submit Credentials

    Scroll To   css=div[class="dropzone"]
    Wait For Elements State     xpath=//span[@class="alert-error"][contains(text(), "Selecione o método de entrega")]    visible    10
