@echo off
setlocal enabledelayedexpansion

call "../setenv.bat"

set /p messageName=Message name: 
set /p totalSubs=Total Fields: 

if %totalSubs% leq 0 (
    echo Error: Fields number must be greater than zero.
    exit /b 1
)

set outputFile=%messageName%.proto
echo syntax = "proto3"; > %outputFile%
echo option java_package = "%RAIDENHTTP_PROTO_CLASS%"; >> %outputFile%
echo. >> %outputFile%
echo message %messageName% { >> %outputFile%

for /l %%i in (1,1,%totalSubs%) do (
    set /p varType=Field Type %%i: 
    set /p varName=Field Name %%i: 
    set /p varValue=Field Value %%i: 
    echo     !varType! !varName! = !varValue!; >> %outputFile%
)

echo } >> %outputFile%
echo Done!
call compileProto.bat %outputFile%