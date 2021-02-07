*** Settings ***
Library     SeleniumLibrary
Test Setup  open browser   http://www.practiceselenium.com/practice-form.html    chrome
Test Teardown  close all browsers

*** Test Cases ***
radioTC
    open browser   http://www.practiceselenium.com/practice-form.html    chrome
    radio button should be set to   sex     Male
    select radio button     sex     Female
    radio button should be set to   sex     Female
    sleep   5s
    ${radiotext}=       get text    //input[@value='Female']/parent::p
    log to console          \n\n\t\t${radiotext}\n\n
    close all browsers

dropdownTC
    [Tags]  t02
    maximize browser window
    ${continent}=       get selected list label     id:continents
    log to console      \n\n\t\t${continent}\n\n
    select from list by label       id:continents       Australia
    ${continent}=       get selected list label     id:continents
    log to console      \n\n\t\t${continent}\n\n

listBoxTC
    [Tags]  t03
    maximize browser window
    @{continent}=       get selected list labels   id:selenium_commands
    log many      \n\n\t\t@{continent}\n\n
    select from list by label       id:selenium_commands       Browser Commands
    select from list by label       id:selenium_commands       Switch Commands
    select from list by label       id:selenium_commands       WebElement Commands
    @{continent}=       get selected list labels     id:selenium_commands
    log to console      \n\n\t\t@{continent}\n\n
