***Settings***

Documentation   Acoes da pagina de Login

***Keywords***

# Abre o browser correspondente na url da aplicacao BugerEats
Open Homepage
    [Arguments]     ${browser}
    New Browser     ${browser}      true
    New Page    https://buger-eats.vercel.app
    Set Browser Timeout     30

Click in Register
    Click    css=a[href="/deliver"]
    Wait For Elements State     id=page-deliver    visible
