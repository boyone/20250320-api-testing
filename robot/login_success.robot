*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
ล็อคอินเข้าระบบด้วย username และ password ถูกต้อง จะต้องเจอ Welcome Page
    เปิดหน้า Web
    กรอก username demo
    กรอก password mode
    กดปุ่ม Login
    ต้องเจอข้อความ Welcome Page 
    ปิดหน้า Web

*** Keywords ***
เปิดหน้า Web
    Open Browser    url=https://www.dminer.in.th    browser=chrome
    Maximize Browser Window

กรอก username demo 
    Input Text    id=username_field    text=demo

กรอก password mode
    Input Text    id=password_field    text=mode

กดปุ่ม Login
    Click Button    id=login_button

ต้องเจอข้อความ Welcome Page
    Wait Until Element Contains    id=container    text=Welcome Page

ปิดหน้า Web
    Close Browser