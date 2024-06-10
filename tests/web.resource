*** Settings ***
Documentation     Здесь будут хранится общие кейворды для всех тестов
Library           SeleniumLibrary



*** Keywords ***
Preconditon: Open Browser and Maximaze
    [Documentation]     Предусловие: Открытие браузера на весь экран
    [Arguments]     ${site_url}     ${browser}

    Open Browser    url=${site_url}     browser=${browser}
    Maximize Browser Window

Postcondition: Close Browser
    [Documentation]     Постусловие: Закрывает браузер, после выполнения теста

    Close Browser





