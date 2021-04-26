@ECHO OFF
rem drag urls.txt onto this .bat file to run


if NOT "%~1"=="" (
	youtube-dl --get-title --batch-file %1
	youtube-dl --list-formats --batch-file %1
	pause
	EXIT /B
	)




:START
set /P urls=Enter URL 
echo %urls%
youtube-dl --get-title %urls%
youtube-dl --list-formats %urls%

if "%~1"=="" GOTO START
