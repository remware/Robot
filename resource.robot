*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${SERVER}         localhost:3000
${BROWSER}        Firefox
${DELAY}          0
${LOGIN URL}      http://${SERVER}/
${WELCOME URL}    http://${SERVER}/#/
${ERROR URL}      http://${SERVER}/error.html
${TITLE}          Elisa Virtual NOC

*** Keywords ***
Open Browser To Home Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Home Page Should Be Open

Home Page Should Be Open
    Title Should Be    Elisa Virtual NOC

Go To Home Page
    Go To    ${LOGIN URL}
    Home Page Should Be Open

Submit Refresh
    Click Button    header-refresh-button

Dashboard Page Should Be Refreshed
    Location Should Be    ${WELCOME URL}
    Title Should Be       ${TITLE}