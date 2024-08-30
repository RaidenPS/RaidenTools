@echo off
setlocal
call "../setenv.bat"

:: Defines the output directory
set "output_dir=%RAIDENGAME_PROTO_OUT%"

:: Creates the output directory if it doesn't exist
if not exist "%output_dir%" mkdir "%output_dir%"

:: Checks if file name is given in first argument.
if not "%~1"=="" (
    set "filename=%~1"
) else (
    set /p filename="Filename: "
)

protoc --java_out=%output_dir% "%filename%"
echo Done!

endlocal
pause
