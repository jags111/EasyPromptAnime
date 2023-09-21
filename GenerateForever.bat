@echo off
if "%~1" == "" (
	echo Drag and drop the configuration *[OPTIONS].json file.
	echo -L[Lenght]-W[Width]-H[Height]-C[Context]-T[TileWidth]-R[RefineWidth]
	pause & exit /b 1
)

:BEGIN
call %~dp0Generate.bat "%~1"
timeout /t 1 /nobreak >nul
goto BEGIN