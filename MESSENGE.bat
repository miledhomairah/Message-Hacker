@echo off
set IDINSTANCE=%random%

for %%A in (%*) do (
    if "%%A"=="--console" (
        echo This Mode Is Still Under Development!
        title Message Hacking - ID: %IDINSTANCE% - Console Mode
    )
    if "%%A"=="-title" (
        echo The Program Is Running Normally...
        title Message Hacking - ID: %IDINSTANCE%
    )
    if "%%A"=="--app" (
        echo Starting app...
        goto APP
    )
    if "%%A"=="--dev" (
        echo Development mode enabled!
        title Message Hacking - ID: %IDINSTANCE% - Dev Mode
        goto DEVAPP
    )
)
goto EOF


:APP
color 10
echo Welcome To The Message Hacking Program!
echo This Program Allows You To Send Messages To Other Devices On The Same Network Using The "MSG" Command.
echo.
echo Make Sure Both Of The Devices Have Remote Desktop Enabled.
echo Displaying IPv4 addresses: [1. Ethernet, 2. Wi-Fi]
ipconfig | findstr /i "ipv4"
pause
cd ./MSGLOG
echo MESSENGER ON, Starting Program >MessengerLog_ID%IDINSTANCE%.log
cls
set /p ip="Please Enter The Wi-Fi IP Address Of The Target Device: "
:message
set /p message="Please Enter The Message You Want To Send: "
msg * /server:%ip% %message%
echo [%time%, %cd%] "%message%" Sent To %ip% >>MessengerLog_ID%IDINSTANCE%.log
goto message



:DEVAPP
color 02
echo Welcome To The Message Hacking Program!
echo This Program Allows You To Send Messages To Other Devices On The Same Network Using The "MSG" Command.
echo.
echo Make Sure Both Of The Devices Have Remote Desktop Enabled.
echo Displaying IPv4 addresses: [1. Ethernet, 2. Wi-Fi]
ipconfig | findstr /i "ipv4"
pause
cd ./MSGLOG
echo MESSENGER ON, Starting Program >MessengerLog_ID%IDINSTANCE%.log
cls
:message
set /p ip="Please Enter The Wi-Fi IP Address Of The Target Device: "
set /p message="Please Enter The Message You Want To Send: "
msg * /server:%ip% %message%
echo [%time%, %cd%] "%message%" Sent To %ip% >>MessengerLog_ID%IDINSTANCE%.log
goto message


:EOF
echo An Error Occurred. Exiting...
pause
exit