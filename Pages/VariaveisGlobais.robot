'##################################################################################################################################
# Autor: Andre Luis
# Decrição: Elementos da pagina Web para realizar a interação
##################################################################################################################################

*** Variables ***

${Logo_Login}                        //div[@class='login_logo'] 
${Campo_Username}                    //input[@id='user-name']
${Campo_Password}                    //input[@id='password']
${Btn_Login}                         //input[@id='login-button']
${Logo_HomePage}                     //div[@class='app_logo']  
${Btn_Menu}                          //button[@id='react-burger-menu-btn']
${Btn_Logout}                        //a[@id='logout_sidebar_link']
${Locator_Erro_Login}                //div[@class='error-message-container error']
${Produto_Luz_de_Bike}               xpath=//*[@id="item_0_title_link"]/div
${Btn_Add_Carrinho}                  xpath=//*[@id="add-to-cart-sauce-labs-bike-light"]
${Btn_Carrinho}                      xpath=//*[@id="shopping_cart_container"]/a
${Page_Carrinho}                     xpath=//*[@id="header_container"]/div[2]/span
${Btn_Remove}                        xpath=//*[@id="remove-sauce-labs-bike-light"]
${Btn_Twitter}                       xpath=//*[@id="page_wrapper"]/footer/ul/li[1]/a
${Element_Twitter}                   xpath=//*[@id="react-root"]/div/div/div[2]/main/div/div/div/div/div/div[1]/div[1]/div/div/div/div/div/div[2]/div/h2/div/div/div/div/span[1]/span/span
${Btn_Facebook}                      xpath=//*[@id="page_wrapper"]/footer/ul/li[2]/a
${Element_Facebook}                  xpath=//*[@id="mount_0_0_wM"]/div/div[1]/div/div[2]/div[2]/div[1]
${Btn_Linkedin}                      xpath=//*[@id="page_wrapper"]/footer/ul/li[3]/a        # # //li[@class="social_facebook"]
${Element_Linkedin}                  xpath=//*[@id="global-nav"]/div/a/div/div/li-icon/svg/path