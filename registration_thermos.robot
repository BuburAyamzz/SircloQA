*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        Chrome
${URL}            https://thermos.com/account/register
${USERNAME}       testuser
${PASSWORD}       testpassword
${NAME}           testname
${EMAIL}          testemail@gmail.com
${PHONENUMBER}    085972957514

*** Test Cases ***
User Registration Test
    Page Should Contain    CREATE AN ACCOUNT
    Open Browser    ${URL}    ${BROWSER}
    Input Text      id=FirstName    ${USERNAME}
    Input Text      id=Email    ${PASSWORD}
    Input Text      id=Phone    ${PHONENUMBER}
    Input Text      placeholder=Create Password   ${PASSWORD}
    Input Text      placeholder=Confirm Password   ${PASSWORD}
    Click Button    id=agree
    Click Button    type=submit
    Close Browser