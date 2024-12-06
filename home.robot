*** Settings ***
Documentation     Suite de testes da página principal

Library             SeleniumLibrary

*** Test Cases ***
Testes para Webapp
    [Documentation]    Este teste abre o site example.com e verifica o conteúdo da página.
    Open Browser         http://walkdog.vercel.app    chrome
    Title Should Be      Walkdog by Papito
    Page Should Contain  Cuidado e diversão em cada passo

    # Sleep temporário
    Sleep   5
    Close Browser
