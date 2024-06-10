*** Settings ***
Documentation    Здесь хранятся кейворды для сайта https://etp.gpb.ru/
Resource    ../web.resource
Resource    .//../locators/etpgpb.ls.resource





*** Keywords ***
Transition registr etp
    [Documentation]   1 шаг:  Открытие страницы регистрации

    Wait Until Page Contains Element      locator=${T0_REGISTR_ETP}  timeout=35s
    Click Element                         locator=${T0_REGISTR_ETP}


To registr page
    [Documentation]     2 шаг: Переход на страницу регистрации и ожидание

    Wait Until Page Contains Element      locator=${TO_TAP_BTH}    timeout=20s
    Click Element                         locator=${TO_TAP_BTH}
    Wait Until Element Is Visible         locator=${REGISTR_PAGE}
    Sleep                                 time_=10s

