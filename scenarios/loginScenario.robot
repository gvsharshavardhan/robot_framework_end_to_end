*** Settings ***
Library     SeleniumLibrary
Resource    ../steps/loginSteps.robot
Resource    ../common/common.robot
Variables   ../variables/variables.py
#Variables   ../variables/loginPageLocators.py
Test Teardown     closeAllChromeBrowsers

*** Variables ***
${orange}       ${orange_login_url}


*** Test Cases ***
valid login scenario
        [Tags]      sanity
        Given user is in https://opensource-demo.orangehrmlive.com/index.php/auth/login login page
        When user login with ${username} and ${password}
        Then user should land on dashboard page
        And user should see dashboard header
