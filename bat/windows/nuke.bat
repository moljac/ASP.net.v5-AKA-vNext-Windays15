@echo off

del /q /s ^
	%USERPROFILE%\.kpm
del /q /s ^
	%USERPROFILE%\.kre

rmdir /s /q ^
	%USERPROFILE%\.kpm
rmdir /s /q ^
	%USERPROFILE%\.kre


del /q /s ^
	%USERPROFILE%\.k
del /q /s ^
	%USERPROFILE%\.dnx

rmdir /s /q ^
	%USERPROFILE%\.k
rmdir /s /q ^
	%USERPROFILE%\.dnx

	
@IF %ERRORLEVEL% NEQ 0 PAUSE	

