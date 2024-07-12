*** Settings ***
Library    AppiumLibrary

*** Variables ***
${AUTOMATION_NAME}     UiAutomator2
${REMOTE_URL}          http://127.0.10.1:4723/wd/hub
${PLATFORM_NAME}       Android
${PLATFORM_VERSION}    15
${DEVICE_NAME}         emulator-5554
${APP}                 C:/Flip/Flip Test App-V2 (1).apk

*** Keywords ***
Open App
    Open Application  ${REMOTE_URL}   automationName=${AUTOMATION_NAME}    platformName=${PLATFORM_NAME}  platformVersion=${PLATFORM_VERSION}    app=${APP}  appPackage=com.wdiodemoapp  appActivity=com.wdiodemoapp.MainActivity
    Element Should Be Visible    //android.widget.TextView[@text="Forms"]

Close App
    Terminate Application    com.wdiodemoapp 