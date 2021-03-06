*Settings*
Documentation       Ações da funcionalidade de busca de restaurantes

*Variables*
${DIV_BOX_RESTAURANT}       css=div[class="place-info-box"][style="opacity: 1;"]

*Keywords*
Go To Restaurants
    Click           text=Estou com fome! 
    Get Text        h1 strong       contains        Ta na hora de matar a fome!

Choose Restaurant
    [Arguments]     ${super_var}

    Click       text=${super_var["restaurant"]}

    Wait For Elements State         css=#detail     visible     10
    Get Text    css=#detail     contains        ${super_var["desc"]}

Search By
    [Arguments]     ${value}
    Click            css=.search-link
    Fill Text        css=input[formcontrolname="searchControl"]      ${value}

Restaurant Should Be Visible
    [Arguments]     ${name}
    #Only waiting image for screenshot
    Sleep   1.5
    Set Strict Mode     False
    Wait For Elements State     ${DIV_BOX_RESTAURANT}     visible     10
    Get Text                    ${DIV_BOX_RESTAURANT}     contains    ${name}

Restaurant Count Should Be
    [Arguments]     ${qtd}
    #Only waiting image for screenshot
    Sleep   1.5
    Wait For Elements State     ${DIV_BOX_RESTAURANT}     Visible     10
    Get Element Count           ${DIV_BOX_RESTAURANT}     equal       ${qtd}