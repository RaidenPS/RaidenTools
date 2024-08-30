@echo off
setlocal enabledelayedexpansion
call "../setenv.bat"

:: Defines the output directory
set "output_dir=%RAIDENGAME_PROTO_OUT%"

:: Creates the output directory if it doesn't exist
if not exist "%output_dir%" mkdir "%output_dir%"

:: Loops through all .proto files in the current directory
for %%f in (*.proto) do (
    echo Processing %%f...
    protoc --java_out="%output_dir%" %%f
)

echo Done.
endlocal

pause