@echo off

setlocal
set httpoutput="C:\Users\believix\Desktop\RaidenPS\tools\proto\out\raidenhttp\"
set gameoutput="C:\Users\believix\Desktop\RaidenPS\tools\proto\out\raidenemu\"
set httpprotos="C:\Users\believix\Desktop\RaidenPS\RaidenHTTPS\src\raidenhttp\cache\protos\"
set gameprotos="C:\Users\believix\Desktop\RaidenPS\RaidenEmu\src\"

xcopy %httpoutput% %httpprotos% /E /I /H /Y
xcopy %gameoutput% %gameprotos% /E /I /H /Y

echo "Done!."
pause
endlocal