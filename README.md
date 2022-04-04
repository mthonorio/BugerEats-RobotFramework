# BugerEats

## Testes de Aceitação no Buger Eats

Este projeto foi desenvolvido como exemplo para os testes automatizados de aceitação em Robot Framework para a turma de Engenharia de Software 2021.2 da Universidade Federal da Paraíba, ministrada pela professora Adriana.

## Instruções de Instalação

### Robot Framework

O **Robot Framework** é implementado usando **Python** e uma pré-condição para instalá-lo é ter o **Python** ou sua implementação alternativa **PyPy** instalada. Outra pré-condição recomendada é ter o gerenciador de pacotes **pip** disponível.

Robot Framework requer _Python 3.6_ ou mais recente. Se você precisar usar _Python 2_, _Jython_ ou _IronPython_, poderá usar o Robot Framework 4.1.3.

Para verificar se você tem o **Python** instalado:

- Abra seu terminal e execute:

```
$ python3 --version
Python 3.8.10
```

Caso já tenha o **Python** instalado, pode instalar o **Robot Framework** utilizando o gerenciador de pacotes padrão **pip**:

- Para garantir que você tenha **pip** disponível, você pode executar `pip --version` ou equivalente.
- Abra seu terminal e execute:

`pip install robotframework`

Caso não tenha o **Python** instalado, siga o passo-a-passo descrito nas [instruções de instalação](https://github.com/robotframework/robotframework/blob/master/INSTALL.rst) do Robot Framework.

### A biblioteca Browser:

Biblioteca que dá suporte a testes de navegadores para o Robot Framework, alimentada pela **Playwright**. Visando velocidade, confiabilidade e visibilidade.

#### Instalação:

Apenas Python 3.7 ou mais recente é suportado.

1. Instale o node.js, por exemplo, de https://nodejs.org/en/download/
2. Atualize o pip `pip install -U pip` para garantir que a versão mais recente seja usada
3. Instale o robotframework-browser a partir da linha de comando: `pip install robotframework-browser`
4. Instale as dependências do node: execute `rfbrowser init` em seu shell

- se `rfbrowser` não for encontrado, tente `python -m Browser.entry init`

Observe que, por padrão, os navegadores Chromium, Firefox e WebKit estão instalados, mesmo aqueles que já estariam
instalado no sistema. O tamanho da instalação depende do sistema operacional, mas geralmente é +700Mb.
É possível pular a instalação dos binários do navegador com o comando `rfbrowser init --skip-browsers` , mas então o usuário
é responsável pela instalação binária do navegador.

### Biblioteca Faker

Permite o uso fácil da geração de dados de teste aleatório do Faker no Robot Framework, assim, formando uma base de dados de testes dinâmica.

#### Instalação:

Utilizando o _pip_ para instalar a biblioteca:

- Abra o terminal e execute o comando:

  `pip install robotframework-faker`

Prontinho seu Robot Framework está pronto para ser utilizado com a biblioteca Selenium e a Faker.

---

## Estrutura de Diretórios

Segue abaixo como esse projeto está organizado e uma breve descrição de seus diretórios.

_Obs: Seguir esse padrão é totalmente opcional._

- **resource:** Estrutura onde se define as keywords utilizadas em nossos cenários de testes, assim serve como documentação e torna mais acessível a pesquisa de keywords desenvolvidas.
  - **fixtures:** Diretório onde define-se uma estrutura estática ou arquivo estático para os testes.
  - **pages:** Diretório onde se localiza nossos Page Objects, utilizado para alocarmos nossas **Keywords** e exporta-las para serem utilizadas em nossos testes automáticos.
- **tests:** Diretório utilizado como estrutura de nossas suítes e casos de testes.
- **logs:** Após o fim de cada cenário ou suíte de testes é gerado um arquivo de documentação nos formatos HTML e XML de forma automática detalhando o passo-a-passo e o resultado de cada cenário.

## Comandos para rodar os testes

Abra seu terminal na pasta raiz do projeto:

Obs:

- `-d` é utilizado para indicar o caminho onde deseja que fique seus arquivos de report criados pelo Robot.
- `-v` é utilizado para indicar as variáveis necessárias, caso existam, em seu cenário de teste alvo para execução.
- `-i` é utilizado para indicar as os cenários a serem executados através de suas **TAGS**, caso existam.

Opções de Browsers:

- `chromium`: Mecanismo do navegador utilizado pelo google chrome e outros browsers como modelo(google chrome puro).
- `firefox`: Utiliza o motor do firefox para executar os cenários de teste.
- `webkit`: Mecanismo do navegador usado pelo Safari, Mail, App Store e muitos outros aplicativos no macOS, iOS e Linux.

### Homepage

`robot -d ./logs/homepage -v browser:[BROWSER] tests/homepage.robot`

### Cadastro

`robot -d ./logs/cadastro -v browser:[BROWSER] tests/cadastro.robot`
