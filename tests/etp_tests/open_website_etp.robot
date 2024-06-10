*** Settings ***
Documentation   в данном разделе будут хранится основные тест-кейсы проекта
Resource        etpgb.resource
Test Setup      web.Preconditon: Open Browser and Maximaze    site_url=https://etp.gpb.ru/#auth/login   browser=chrome
Test Teardown   web.Postcondition: Close Browser
Test Timeout    35s

*** Test Cases ***
Transition_open_page_etpgpb
    [Documentation]     Открытие страницы регистрации
    etpgb.Transition registr etp
    etpgb.To registr page



