*** Settings ***
Library           Selenium2Library

*** Test Cases ***
Registration
    Open Browser    https://www.mikrosat.hu    firefox
    Click Button    //*[@id="profile__btn"]
    Click Element    //*[@id="container"]/header/div/div/div[2]/div/div[2]/div[3]/div/div[2]/div[2]/div[1]/a
    Input Text    //*[@id="emai"]    nagy.huba.kende@diak.szbi-pg.hu
    Input Password    //*[@id="passwd1"]    KBYA9Rh4
    Input Password    //*[@id="passwd2"]    KBYA9Rh4
    Click Element    //*[@id="div_out_company_choose"]/div/div[2]/label
    Input Text    //*[@id="kap_mobile_sub"]    204915869
    Input Text    //*[@id="default_nev"]    Nagy Huba
    Input Text    //*[@id="default_irany"]    7132
    Input Text    //*[@id="default_utca"]    Kossuth utca 49
    Execute Javascript    window.scrollTo(0, 620)
    Click Button    //*[@id="button_reg"]
    Wait Until Page Contains    A regisztráció sikeresen megtörtént.
    Page Should Contain    A regisztráció sikeresen megtörtént.
    Close Browser
