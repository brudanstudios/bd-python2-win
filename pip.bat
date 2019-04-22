@echo off
setlocal enableextensions EnableDelayedExpansion
goto :main


:main
setlocal

	rem -- get absolute location of this folder (note- always ends with a \)
	set CURRENT_DIR=%~dp0

	rem -- remove the trailing slash otherwise it causes all sorts of problems later!
	IF %CURRENT_DIR:~-1%==\ SET CURRENT_DIR=%CURRENT_DIR:~0,-1%

	%CURRENT_DIR%\bin\python -m pip %*

endlocal
goto :eof