@echo off
setlocal
set /p filename="Filename: "
openssl rsa -in %filename% -outform DER -out private_key.der
echo Done!
endlocal