@ECHO OFF
rem drag urls.txt onto this .bat file to run


if NOT "%~1"=="" (
	set video_source=--batch-file %1
	)


:START


if "%~1"=="" (
	set /P video_source=Enter URL 
)





youtube-dl --get-title %video_source%
youtube-dl --list-formats %video_source%


if "%~1"=="" GOTO START
if NOT "%~1"=="" pause