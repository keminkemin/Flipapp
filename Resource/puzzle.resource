*** Settings ***
Resource    init.resource
Resource    locator.resource

*** Keywords ***
Go to puzzle
    Click Element    ${PUZZLE}

Put puzzles
    Wait Until Element Is Visible    ${DRAG1}
    Drag And Drop    ${DRAG3}    ${DROP3}
    Drag And Drop    ${DRAG2}    ${DROP2}
    Drag And Drop    ${DRAG1}    ${DROP1}
    Drag And Drop    ${DRAG4}    ${DROP4}
    Drag And Drop    ${DRAG7}    ${DROP7}
    Drag And Drop    ${DRAG8}    ${DROP8}
    Drag And Drop    ${DRAG9}    ${DROP9}
    Drag And Drop    ${DRAG6}    ${DROP6}
    Drag And Drop    ${DRAG5}    ${DROP5}
 
Confirm then retry
    Wait Until Element Is Visible    ${CONGRATULATION}
    Click Element    ${RETRY}

Do halfway then reset
    Wait Until Element Is Visible    ${DRAG1}
    Drag And Drop    ${DRAG1}    ${DROP1}
    Drag And Drop    ${DRAG2}    ${DROP2}
    Drag And Drop    ${DRAG3}    ${DROP3}
    Drag And Drop    ${DRAG4}    ${DROP4}
    Drag And Drop    ${DRAG5}    ${DROP5}
    Click Element    ${RESET_PUZZLE}
    Put puzzles