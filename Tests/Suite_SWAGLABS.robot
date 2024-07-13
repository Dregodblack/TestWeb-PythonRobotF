###################################################
Autor: André Luis  
Descrição: Avaliação para Automação de testes

Comando para rodar a Suite de testes: 
    robot -d./results  Tests\Suite_SWAGLABS.robot
###################################################

*** Settings ***
Resource                ../Steps/Steps_SWAGLABS.robot

Test Setup              Iniciar Sessão
Test Teardown           Finalizar Sessão


*** Test Case ***
# # [Documentation]       Requisitos do site >> Tipos de Usuarios e Senha:

    # Usuario_Padrao                    standard_user
    # Usuario_Bloqueado                 locked_out_user problem_user
    # Usuario_Performance               performance_glitch_user
    # Senha                             secret_sauce

    #Obs: Mas se preferir pode inserir manualmente a massa de dados entre as "__" aspas da keyword


# Cenários de testes baseados em testes explorátórios e mapa mental

CT01: Realizar Login com sucesso no site da SWAG LABS
    [Documentation]    Esse Teste realiza o fluxo de login no site SWAG LABS
    [Tags]             Login
    Dado que acesso o site do SWAG LABS
    Quando preencho os campos de Usuario >> "performance_glitch_user" e Senha >> "secret_sauce"
    Então valido que o usuario realizou o login com sucesso

     
CT02: Realizar Login com falha no site da SWAG LABS
    [Documentation]    Esse Teste realiza o fluxo de login no site SWAG LABS
    [Tags]             Login
    Dado que acesso o site do SWAG LABS
    Quando preencho os campos de Usuario >> "locked_out_user problem_user" e Senha >> "${Senha_Faker}"
    Então valido a mensagem de erro exibida na tela de login


CT03: Selecionar produto e adicionar ao carrinho
    [Documentation]    Esse Teste realiza o fluxo de adicionar o produto no carrinho
    [Tags]             Carrinho
    Dado que acesso o site do SWAG LABS
    Quando preencho os campos de Usuario >> "standard_user" e Senha >> "secret_sauce"
    E acesso a pagina principal da home page 
    E seleciono um produto
    E adiciono ele no carrinho 
    E seleciono a opção carrinho
    Então valido que o produto está no carrinho 


CT04: Remover produto do carrinho
    [Documentation]    Esse Teste realiza o fluxo de Remover produto do carrinho
    [Tags]             Carrinho
    Dado que acesso o site do SWAG LABS
    Quando preencho os campos de Usuario >> "standard_user" e Senha >> "secret_sauce"
    E acesso a pagina principal da home page 
    E seleciono um produto
    E adiciono ele no carrinho 
    E seleciono a opção carrinho
    E removo o produto do carrinho 
    Então valido que o carrinho está vazio


CT05: Validar outro contato da pagina Home - Facebook
    [Documentation]    Esse Teste Validar outros meios de contatos da pagina Home
    [Tags]             contatos
    Dado que acesso o site do SWAG LABS
    Quando preencho os campos de Usuario >> "standard_user" e Senha >> "secret_sauce"
    E acesso a pagina principal da home page 
    E seleciono a opção Facebook de contato 
    Então valido a pagina do Facebook direcionada contendo as informações desejadas 


CT06: Validar outro contato da pagina Home - Twitter
    [Documentation]    Esse Teste Validar outros meios de contatos da pagina Home
    [Tags]             contatos
    Dado que acesso o site do SWAG LABS
    Quando preencho os campos de Usuario >> "standard_user" e Senha >> "secret_sauce"
    E acesso a pagina principal da home page 
    E seleciono a opção Twitter de contato 
    Então valido a pagina do Twitter direcionada contendo as informações desejadas 


CT07: Validar outro contato da pagina Home - Linkedin
    [Documentation]    Esse Teste Validar outros meios de contatos da pagina Home
    [Tags]             contatos
    Dado que acesso o site do SWAG LABS
    Quando preencho os campos de Usuario >> "standard_user" e Senha >> "secret_sauce"
    E acesso a pagina principal da home page 
    E seleciono a opção Linkedin de contato 
    Então valido a pagina do Linkedin direcionada contendo as informações desejadas 

#########################################################################################################################################################################
# Cenários de testes comentados >>> não consegui finalizar por conta do tempo

# CT08: Realizar compra do produto
#     [Documentation]    Esse Teste realiza o fluxo de compra do produto
#     [Tags]             Compra
#     Dado que acesso o site do SWAG LABS
#     Quando preencho os campos de Usuario >> "standard_user" e Senha >> "secret_sauce"
#     E acesso a pagina principal da home page 
#     E seleciono um produto
#     E adiciono ele no carrinho
#     E seleciono a opção carrinho
#     E seleciono a opção CHECK-OUT para confirmar e continuar
#     E preencho os campos obrigatórios com os dados do usuario
#     E clico em Terminar para concluir o pedido
#     Então valido que a compra foi realizada com sucesso


# CT09: Realizar fluxo de compra sem adicionar o produto no carrinho
#     [Documentation]    Esse Teste realiza o fluxo de compra do produto sem adicionar o produto no carrinho
#     [Tags]             Compra
#     Dado que acesso o site do SWAG LABS
#     Quando preencho os campos de Usuario >> "standard_user" e Senha >> "secret_sauce"
#     E acesso a pagina principal da home page 
#     E seleciono a opção carrinho
#     E seleciono a opção CHECK-OUT para confirmar e continuar
#     E preencho os campos obrigatórios com os dados do usuario
#     E clico em Terminar para concluir o pedido
#     Então valido que a compra foi realizada com sucesso


# CT010: Realizar fluxo de compra sem preencher os campos de CHECK-OUT
#     [Documentation]    Esse Teste realiza o fluxo de compra do produto sem preencher os campos de CHECK-OUT
#     [Tags]             Compra
#     Dado que acesso o site do SWAG LABS
#     Quando preencho os campos de Usuario >> "standard_user" e Senha >> "secret_sauce"
#     E acesso a pagina principal da home page 
#     E seleciono um produto
#     E adiciono ele no carrinho
#     E seleciono a opção carrinho
#     E seleciono a opção CHECK-OUT para confirmar e continuar
#     E não preencho os campos obrigatórios 
#     Então valido a mensagem de erro: ${Mensagem_Erro_CHECK-OUT} exibida na tela


# CT11: Realizar filtro por produtos da pagina home
#     [Documentation]    Esse Teste realiza a busca de produtos por filtro selecionado na pagina home
#     [Tags]             Filtro
#     Dado que acesso o site do SWAG LABS
#     Quando preencho os campos de Usuario >> "standard_user" e Senha >> "secret_sauce"
#     E acesso a pagina principal da home page 
#     E Seleciono o filtro por produtos
#     Então valido o resultado exibido na tela 


# CT12: Realizar busca por detalhes e informações sobre o Labs
#     [Documentation]    Esse Teste realiza a busca por detalhes e informações sobre o Labs
#     [Tags]             Sobre
#     Dado que acesso o site do SWAG LABS
#     Quando preencho os campos de Usuario >> "standard_user" e Senha >> "secret_sauce"
#     E acesso a pagina principal da home page 
#     E seleciono o menu da principal da home page 
#     E seleciono a opção sobre
#     Então valido a pagina direcionada contendo as informações desejadas







# [Documentation]       Relatório:

# 1 - O site possui uma função: ("Reset App State/Redefinir estado do aplicativo") posteriormente realizado o fluxo de login no menu principal, 
# porém  ao selecionar a opção, ela não carrega e não resulta nenhuma mensagem de erro ou direcionamento ao usuario.

# 2 - O site possui um filtro para os produtos exibidos na tela principal, porém em duas das opções: (NOME A à Z) e (NOME Z à A), quando selecionadas, não exibem 
#  na tela conforme solicitado pelo usuario final.

# 3 - O site não possui a opção de um novo cadastro de usuario, não apto para novos integrantes a plataforma.

# 4 - O site não possui a opção de: "Esqueçi minha senha", caso um usuario perca seus dados e queira recuperar seu acesso.

# 5 - Ao tentar realizar testes de login com os dados de usuario e senha diferente dos que estão registrados no sistema, apresenta um 
# erro: ("Epic sadface: You can only access '/cart.html' when you are logged in."), porém não relacionado aos dados inseridos incorretamente, mas dizendo 
# que: ("Você só pode acessar '/cart.html' quando estiver logado"), essa mensagem de erro não direciona ao usuario final que inseriu os dados cadastrais incorretamente.

# 6 - O site possui uma função: ("All Items/Todos os itens") posteriormente realizado o fluxo de login no menu principal, 
# porém  ao selecionar a opção, ela não carrega e não resulta nenhuma mensagem de erro ou direcionamento ao usuario.

# 7 - O site permite realizar uma compra sem ter selecionado um produto, não resultando nenhuma mensagem de erro ou direcionamento ao usuario final.
