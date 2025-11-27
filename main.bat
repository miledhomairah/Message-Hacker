@echo off
title Redirecting!
echo ###########################################
echo #            M         MDPC               #
echo #             E        External           #
echo #              N       Non                #
echo #               U      U.I                #
echo #                P     Program            #
echo ###########################################
echo #  MDPC, All Rights Reserved              #
echo ###########################################
echo.
mkdir MSGLOG >CLEAROUTPUT
start clear.bat
echo Redirecting To Messenger; Please Wait!
ping 127.0.0.1 >PING1R.log
start MESSENGE.bat --title --app
title Redirected!
ping 127.0.0.1 >>PING1R.log
exit