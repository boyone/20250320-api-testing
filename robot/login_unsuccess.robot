*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
ล็อคอินเข้าระบบด้วย username และ password ที่ไม่ถูกต้อง จะต้องเจอ Error Page
    เปิดหน้า Web
    กรอก username    adminPlam
    กรอก password    Plam1
    กดปุ่ม Login
    ต้องเจอข้อความ    Error Page 
    ปิดหน้า Web

*** Keywords ***
เปิดหน้า Web
    Open Browser    url=https://www.dminer.in.th    browser=chrome
    Maximize Browser Window

กรอก username 
    [Arguments]    ${username}
    Input Text    id=username_field    text=${username}

กรอก password
    [Arguments]    ${password}
    Input Text    id=password_field    text=${password}

กดปุ่ม Login
    Click Button    id=login_button

ต้องเจอข้อความ
    [Arguments]    ${message}
    Wait Until Element Contains    id=container    text=${message}

ปิดหน้า Web
    Close Browser