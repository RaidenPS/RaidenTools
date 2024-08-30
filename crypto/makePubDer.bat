@echo off

setlocal
set /p filename="Filename: "

openssl rsa -pubin -inform PEM -in %filename%.pem -outform DER -out %filename%.der
echo Done!
endlocal