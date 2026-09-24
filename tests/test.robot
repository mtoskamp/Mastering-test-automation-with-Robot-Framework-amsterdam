*** Settings ***
Resource     general.resource

Test Tags    example


*** Test Cases ***
test positief
    [Tags]    positief
    Controle correct tekstbestand    hello gemeente Amsterdam!
    Controle correct tekstbestand    goodbye world!    training2.txt

test negatief
    [Tags]    negatief
    Controle incorrect tekstbestand    hello gemeente den haag!
