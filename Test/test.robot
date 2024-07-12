*** Settings ***
Resource    ../Resource/init.resource
Resource    ../Resource/forms.resource
Resource    ../Resource/puzzle.resource

Suite Setup    Run Keywords    Open App
Suite Teardown    Run Keywords    Close App

Test Setup    Sleep    2
Test Teardown    Sleep    2

*** Test Cases ***
Fill Forms
    Fill input text    matanejancukasu
    Turn switch to on
    Turn switch to off
    Select dropdown flip.id is awesome    
    Select dropdown Flip: Transfer Antar Bank Tanpa Biaya
    Select dropdown Flip: Transfer Beda Bank Gratis
    Active button should show pop-up
    Inactive button should not show pop-up

Complete puzzle
    Go to puzzle
    Put puzzles
    Confirm then retry

halfway puzzle, reset, then complete it
    Go to puzzle
    Do halfway then reset
    Put puzzles
    Confirm then retry