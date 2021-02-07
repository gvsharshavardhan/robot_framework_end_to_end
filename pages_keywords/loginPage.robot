*** Settings ***
Library     SeleniumLibrary
Library     ../variables/variables.py
Variables    ../variables/loginPageLocators.py


*** Keywords ***
go to ${orange} login page
        open browser  ${orange}     ${browser}
enter valid ${username} username
        input text      id:${usernameID}    ${username}
enter valid ${password} password
        input text      id:${passwordID}    ${password}
click login button
        click element       id:${loginID}
page should have dashboard text
        page should contain  ${dashboard_header_name}
page header should be dashboard
        element text should be      ${dashboard_header_xpath}       ${dashboard_header_name}