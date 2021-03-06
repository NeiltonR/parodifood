*Settings*
Documentation       Ações da funcionalidade do carrinho de compras


*Keywords*
Add To Card
    [Arguments]     ${name}
                #Xpath anti quebra
    Click       xpath=//span[text()="${name}"]/..//a[@class="add-to-cart"]

Should Add To cart
    [Arguments]     ${name}

    Wait For Elements State     css=#cart tr >> text=${name}      visible     5

Total Cart Should Be
    [Arguments]     ${total}

    Log             ${total}
                    #Xpath Contains Selector
    Get Text        xpath=//th[contains(text(),"Total:")]/..//td    contains    ${total}