*** Settings ***
Resource    init.resource
Resource    locator.resource
Library    OperatingSystem

*** Keywords ***
Fill input text
    [Arguments]    ${text}
    Click Element    ${FORMS}  
    Wait Until Element Is Visible    ${ACTIVE}
    Element Should Be Visible    ${ACTIVE}
    Input Text    ${INPUT_FIELD}    ${text}
    Element Should Contain Text    ${TEXT_RESULT}    ${text}

Turn switch to on
    Click Element    ${SWITCH_OFF}
    ${text} =    Get Text    ${SWITCH_TEXT}
    Should Be Equal    ${text}    Click to turn the switch OFF
    
Turn switch to off
    Click Element    ${SWITCH_OFF}
    ${text} =    Get Text    ${SWITCH_TEXT}
    Should Be Equal    ${text}   Click to turn the switch ON

Select dropdown flip.id is awesome
    Click Element    ${DROPDOWN}
    Click Element    ${AWESOME}
    Element Should Be Visible    ${AWESOME_SELECTED}

Select dropdown Flip: Transfer Antar Bank Tanpa Biaya
    Click Element    ${DROPDOWN}
    Click Element    ${TANPA_BIAYA}
    Element Should Be Visible    ${TANPA_BIAYA_SELECTED}

Select dropdown Flip: Transfer Beda Bank Gratis
    Click Element    ${DROPDOWN}
    Click Element    ${GRATIS}
    Element Should Be Visible    ${GRATIS_SELECTED}

Active button should show pop-up
    Click Element    ${ACTIVE}
    Wait Until Element Is Visible    ${ACTIVE_POPUP}
    Element Should Be Visible    ${ACTIVE_POPUP}
    Click Element    ${OK_POPUP}

Inactive button should not show pop-up
    Click Element    ${INACTIVE}
    Page Should Not Contain Element    ${ACTIVE_POPUP}