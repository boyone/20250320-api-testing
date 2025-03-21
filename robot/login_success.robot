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

*** Keywords ***
เปิดหน้า Web
    Open Browser    url=https://www.dminer.in.th    browser=chrome
    Maximize Browser Window