##################################################################################################################################
# Autor: Andre Luis
# Decrição: Metodos de configurações gerais
##################################################################################################################################

*** Settings ***
Resource         ../Config/settings.robot

*** Keywords ***
########################################################################

# Test Setup
Iniciar Sessão
    Open Browser  b                   browser=chrome
    Maximize Browser Window
    Esperar

# Test Teardown
Finalizar Sessão
    Capture page screenshot
    Close Browser

######################################################################

Validar elemento
    [Arguments]                              ${Element}          
    Wait Until Element Is Visible            ${Element}   
    Esperar
    Capture Page Screenshot

Esperar
    Sleep                                    5

Clicar no Elemento
    [Arguments]                              ${Element}
    Validar elemento                         ${Element}
    Click Element                            ${Element} 

Clicar no Botão
    [Arguments]                              ${Element} 
    Validar elemento                         ${Element}
    Click Button                             ${Element} 

Preencher Text
    [Arguments]                              ${Element}        ${Text}
    Clicar no Elemento                       ${Element} 
    Input Text                               ${Element}        ${Text}       

Validação de Elemento não encontrado na tela
    [Arguments]                             ${Element}           
    ${Status}             Run Keyword And Return Status            Validar elemento     ${Element}
    Pass Execution If    '${Status}' == 'False'                    Pass Execution

Validação de Elemento encontrado na tela
    [Arguments]                             ${Element}           
    ${Status}             Run Keyword And Return Status            Validar elemento     ${Element}
    Pass Execution If    '${Status}' == 'True'                    Pass Execution

# Verifica se existe o texto na Tela
#     [Arguments]         ${element}          ${Texto}
#     Sleep                                                         5
#     Wait Until Element Contains             ${element}           ${Texto}
#     Capture Page Screenshot

# Verifica Se Input Esta Na Tela
#     [Arguments]             ${pageObject}                        ${opção}
#     ${Status}           Run Keyword And Return Status           Olha se Existe                                  ${pageObject}          
#     Run Keyword If          '${Status}' == 'True'               Preenche Text                                   ${pageObject}   ${opção}

# Verifica CheckBox Caracteristicas add e seleciona
#     [Arguments]             ${pageObject}                           @{List_Caracteristicas}            
#     ${Status}           Run Keyword And Return Status           Olha se Existe                            ${pageObject}  
#     Run Keyword If          '${Status}' == 'True'               Seleciona Item Check Box Caracteristicas add "@{List_Caracteristicas}"


# Verifica CheckBox Itens add e seleciona
#     [Arguments]             ${pageObject}                           @{List_ItensAdicionais}
#     ${Status}           Run Keyword And Return Status           Olha se Existe                            ${pageObject}
#     Run Keyword If          '${Status}' == 'True'               Seleciona Item Check Box Itens add        @{List_ItensAdicionais}

# Verifica CheckBox Planos e seleciona
#     [Arguments]             ${pageObject}                        ${opção}       
#     ${Status}           Run Keyword And Return Status           Olha se Existe                        ${pageObject}
#     Run Keyword If          '${Status}' == 'True'               Seleciona Item Check Box Planos       ${opção}

# Seleciona Item Combo Box
#     [Arguments]                         ${combobox}         ${itemcombobox}
#     Sleep                               1
#     Wait Until Element Is Visible       ${combobox}         20
#     Click Element                       ${combobox}
#     ${Item}                             Set Variable        ${combobox}//option[@value='${itemcombobox}']
#     Wait Until Element Is Visible       ${Item}             20
#     Click Element                       ${Item}

# Seleciona Item Check Box
#     [Arguments]                 ${element}
#     IF                          '${element}' == 'Yes'
#             Click No Item       ${option_Yes}
#     ELSE
#             Click No Item       ${option_No}
#     END 

# Seleciona Item Check Box Itens add "@{List_ItensAdicionais}"
#     [Arguments]             @{List_ItensAdicionais}
#     FOR    ${element}    IN    @{List_ItensAdicionais}
#             IF                          '${element}' == 'Único Dono'
#             Click No Item       ${Option_UnicoDono}
#         ELSE IF                     '${element}' == 'IPVA Pago'
#             Click No Item       ${Option_IPVAPago}
#         ELSE IF                     '${element}' == 'Não aceito troca'
#             Click No Item       ${Option_NaoAceitoTroca}
#         ELSE IF                     '${element}' == 'Veículo financiado'
#             Click No Item       ${Option_VeiculoFinanciado}
#         ELSE IF                     '${element}' == 'Licenciado'
#             Click No Item       ${Option_Licenciado}
#         ELSE IF                     '${element}' == 'Garantia de Fábrica'
#             Click No Item       ${Option_GarantiaDeFabrica}
#         ELSE IF                     '${element}' == 'Veículo de Colecionador'
#             Click No Item       ${Option_VeiculoDeColecionador}
#         ELSE IF                     '${element}' == 'Todas as revisões em concessionária'
#             Click No Item       ${Option_TodasAsRevisõesEmConcessionaria}
#         ELSE IF                     '${element}' == 'Adaptada para pessoas com deficiência'
#             Click No Item       ${Option_AdaptadaParaPessoasComDeficiencia}
#         END
#     END

# Passar Com o Mouse em Cima 
#     [Arguments]         ${element}
#     Olha se Existe                     ${element}    
#     Mouse Over                         ${element}
#     Sleep                              3   
#     Capture Page Screenshot

# Ir Com o Mouse até... e Clicar
#     [Arguments]         ${element}
#     Olha se Existe                     ${element}    
#     Mouse Over                         ${element}   
#     Click Element                      ${element}
#     Sleep                              3
#     Capture Page Screenshot
    
# Recarregar a pagina Web
#     Reload Page
#     Sleep                3
#     Capture Page Screenshot