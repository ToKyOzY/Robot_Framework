
*** Settings ***


Library  SeleniumLibrary
Variables    ../keywords/Data.py
Variables    ../locators/Locators.py



*** Keywords  ***
 N11 Anasayfaya Git
   Open Browser    ${DataN11.UrlN11}   chrome
   Maximize Browser Window
   Set Selenium Implicit Wait   10s

 N11 Giris Yap

 Click Element    ${N11Locators.Giris_yap}
 Input Text      ${N11Locators.Email_yeri}  ${DataN11.EMAIL}
 Input Password  ${N11Locators.sifre_yeri}  ${DataN11.SIFRE}






