*** Settings ***
Documentation        Arquivo que representa a página de cadastro com ações e elementos

Library             SeleniumLibrary

*** Keywords ***
Fill signup form
    [Arguments]      ${NAME}        ${EMAIL}        ${CPF}        ${CEP}        ${NUMBER}      ${DETAILS} 

    Input Text      css=input[name="name"]              ${NAME}
    Input Text      css=input[name="email"]             ${EMAIL}
    Input Text      css=input[name="cpf"]               ${CPF}
    Input Text      css=input[name="cep"]               ${CEP}
    Input Text      css=input[name="addressNumber"]     ${NUMBER}
    Input Text      css=input[name="addressDetails"]    ${DETAILS}
    Choose File     css=input[type="file"]              ${EXECDIR}/fixtures/document.png
    

Submit signup form
  Click Element   xpath=//button[contains(text(), "Cadastrar")]

Popup have text
  [Arguments]                       ${expected_text}
  ${element}                        Set Variable           xpath=//div[@class="swal2-html-container"]

  Wait Until Element Is Visible    ${element}     5
  Element Should Contain          ${element}            ${expected_text}



Alert have text
   [Arguments]                   ${expected_text}
   ${element}                    Set Variable           xpath=//span[@class="alert-error"][text()="${expected_text}"]
   
  Wait Until Element Is Visible    ${element}     5
  Capture Element Screenshot       ${element}