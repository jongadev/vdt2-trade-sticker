*** Settings ***
Documentation       Arquivo principal do projeto

Library             Browser
Library             factories/User.py

Resource            Pages/login.Resource
Resource            Pages/dash.resource



*** Keywords ***
Do Login
    ${user}              Factory User     login
    Go To Login Page
    Submit Credentials    ${user}
    User Logged In

Start Test
    New Browser     headless=False      browser=chromium

Finish Test
    #Thinking Time
    Sleep                       1
    Take Screenshot