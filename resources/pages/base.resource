*** Settings ***  
Documentation    Page Objects  

Library          SeleniumLibrary  

Resource        ${EXECDIR}/resources/pages/SignupPage.robot


*** Variables ***  
${BASE_URL}      https://walkdog.vercel.app/signup  
${BROWSER}       Chrome  
${DELAY}         5s

*** Keywords ***  
Start session  
    Open Browser    ${BASE_URL}    ${BROWSER} 
    Set Window Size    1920    1080

Finish session  
    Capture Page Screenshot  
    Close Browser