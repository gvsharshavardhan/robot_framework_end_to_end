*** Settings ***
Resource  ../pages_keywords/loginPage.robot

*** Keywords ***
user is in ${orange} login page
        go to ${orange} login page

user login with ${username} and ${password}
        enter valid ${username} username
        enter valid ${password} password
        click login button


user should land on dashboard page
        page should have dashboard text

user should see dashboard header
        page header should be dashboard