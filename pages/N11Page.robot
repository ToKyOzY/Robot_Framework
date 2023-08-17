
*** Settings ***
Library  SeleniumLibrary
Variables  ../keywords/Data.py
Variables  ../locators/Locators.py




*** Keywords  ***
N11 Anasayfaya Git
  Open Browser    ${DataN11.UrlN11}   chrome
  Maximize Browser Window
  Set Selenium Implicit Wait   10s

N11 Giris Yap
  Click Element    ${N11Locators.Giris_yap}
  Input Text    ${N11Locators.Email_yeri}    ${DataN11.EMAIL}
  Input Password    ${N11Locators.sifre_yeri}    ${DataN11.SIFRE}
  Set Selenium Implicit Wait   5s

Urun Arama
  Input Text    ${N11Locators.Arama_yeri}    ${DataN11.ARANACAK_KELIME}
  Click Element    ${N11Locators.Arama_Butonu}
  Set Selenium Implicit Wait   5s
  Title Should Be  ${DataN11.Expected_Title}
  Click Element  ${N11Locators.Sepete_Ekle}
  Click Element  ${N11Locators.Sepet_Butonu}





