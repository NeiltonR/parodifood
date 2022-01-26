*Settings*
Documentation       Arquivo base do projeto

Library             Browser

Resource            actions/search.robot

*Keywords*
Start Session
    New Browser     chromium        False
    New Page        http://parodifood.qaninja.academy/
    #checkpoint
    Set Strict Mode     False
    Get Text        css=span    contains    Nunca foi tão engraçado pedir comida