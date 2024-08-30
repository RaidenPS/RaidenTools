@echo off

call ./tools/setenv.bat print

cd %RAIDENHTTP_PROJ_DIR%
java -jar RaidenHTTP.jar