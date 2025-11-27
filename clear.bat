@echo off
echo CLEARING
del PING1R.log /Q
del PING2R.log /Q
del CLEAROUTPUT
cd ./MSGLOG
del * /Q
cd ../
exit