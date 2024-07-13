##################################################################################################################################
# Autor: Andre Luis
# Decrição: Metodos para a interação com a Suite principal
##################################################################################################################################


*** Settings ***
Resource                ../Config/settings.robot
Resource                ../Pages/MetodosGlobais.robot
Resource                ../Pages/VariaveisGlobais.robot
Resource                ../database/Massa_de_Dados.robot


*** Keywords ***

Dado que acesso o site do SWAG LABS
    Go To                         url=${Site_SWAGLAB}
    Validar elemento                  ${Logo_Login}

Quando preencho os campos de Usuario >> "${Usuario}" e Senha >> "${Senha}"
    Preencher Text                    ${Campo_Username}        ${Usuario}
    Preencher Text                    ${Campo_Password}        ${Senha}
    Clicar no Botão                   ${Btn_Login}

Então valido que o usuario realizou o login com sucesso 
    Validar elemento                  ${Logo_HomePage}
    Clicar no Botão                   ${Btn_Menu}    
    Clicar no Elemento                ${Btn_Logout}
    Validar elemento                  ${Logo_Login}

Então valido a mensagem de erro exibida na tela de login
    Validar elemento                 ${Locator_Erro_Login}
    Element Text Should Be           ${Locator_Erro_Login}         ${Mensagem_Erro_Login}

 E acesso a pagina principal da home page 
    Validar elemento                  ${Logo_HomePage}
    Validar elemento                  ${Btn_Menu}

E seleciono um produto
    Clicar no Elemento                ${Produto_Luz_de_Bike}

E adiciono ele no carrinho 
    Clicar no Botão                   ${Btn_Add_Carrinho}    

Então valido que o produto está no carrinho 
    Validar elemento                  ${Page_Carrinho}
    Validar elemento                  ${Btn_Remove}    

E seleciono a opção carrinho
    Clicar no Elemento                ${Btn_Carrinho} 
E removo o produto do carrinho 
    Clicar no Elemento                ${Btn_Remove}

Então valido que o carrinho está vazio
    Validação de Elemento não encontrado na tela    ${Btn_Remove}

E seleciono a opção Facebook de contato 
    Scroll Element Into View          ${Btn_Twitter}
    Clicar no Elemento                ${Btn_Twitter}      

Então valido a pagina do Facebook direcionada contendo as informações desejadas 
    Validação de Elemento encontrado na tela       ${Element_Twitter}         

E seleciono a opção Twitter de contato 
    Scroll Element Into View          ${Btn_Facebook}
    Clicar no Elemento                ${Btn_Facebook}        

Então valido a pagina do Twitter direcionada contendo as informações desejadas 
    Validação de Elemento encontrado na tela                ${Element_Facebook}

E seleciono a opção Linkedin de contato 
    Scroll Element Into View          ${Btn_Linkedin}
    Clicar no Elemento                ${Btn_Linkedin}       

Então valido a pagina do Linkedin direcionada contendo as informações desejadas 
    Validação de Elemento encontrado na tela          ${Element_Linkedin} 