*** Settings ***
Documentation    In dit resource bestand treffen we keywords aan
...              waarmee we tekst bestanden kunnen valideren.

Library          OperatingSystem


*** Keywords ***
Controle correct tekstbestand
    [Documentation]    Middels dit keyword wordt een bestand opgehaald en een vergelijking gedaan voor de juiste waarde.
    [Arguments]    ${verwachte_tekst}    ${bestand}=training.txt
    ${opgehaalde_tekst}    Get File    ${EXECDIR}${/}tests${/}documenten${/}${bestand}
    # Log To Console    ${opgehaalde_tekst}
    # Should Contain    ${waarde}    Gemeente Amsterdam!
    Set Log Level    TRACE
    Should Be Equal    ${opgehaalde_tekst}    ${verwachte_tekst}    ignore_case=${True}
    # Log    tekst uit het bestand was: ${opgehaalde_tekst}

Controle incorrect tekstbestand
    [Arguments]    ${verwachte_tekst}
    ${opgehaalde_tekst}    Get File    ${EXECDIR}${/}tests${/}documenten${/}training.txt
    Should Not Be Equal    ${opgehaalde_tekst}    ${verwachte_tekst}
