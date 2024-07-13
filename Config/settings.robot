##################################################################################################################################
# Autor: Andre Luis
# Decrição: Doc/Config
##################################################################################################################################

Locale = pt_BR

*** Settings ***
# Bibliotecas utilizadas

Library             SeleniumLibrary
Library             AutoRecorder
Library             FakerLibrary


*** Variable ***

# URL do site

${Site_SWAGLAB}              https://www.saucedemo.com/


***Keywords***

[Documentation] 
# README

# Para você Conseguir rodar essa automação é preciso baixar em seu Sistema Operacional:

# -Linguagem de programação Python: (https://www.python.org/downloads/); Versão utilizada(Python 3.7.4);
# -Robot Framework, no CMD jogar o comando: (pip install robotframework) Versão utilizada(robotframework-6.0.1); 

# -Extensões Necessárias do VS_Code: 
#     (Python), (Pylance), (Robot Framework Language Server), (Robot Framework Formatter), (RobotF Extension), (Portuguese (Brazil) Language Pack for Visual Studio Code), e (Jupyter)

# -Bibliotecas baixadas:
#     (SeleniumLibrary) no CMD jogar o comando: (pip install --upgrade robotframework-seleniumlibrary) 
#     (AutoRecorder) no CMD jogar o comando: (pip install robotframework-autorecorder) 
#     (FakerLibrary) no CMD jogar o comando: (pip install robotframework-faker) 

# -Bibliotecas importadas:
#     (BuiltIn) Link: (https://robotframework.org/robotframework/latest/libraries/BuiltIn)