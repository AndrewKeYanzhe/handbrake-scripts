rem run this .bat and paste youtube link, or
rem drag urls.txt onto this .bat file to run


@ECHO OFF

rem for launching with url.txt
if NOT "%~1"=="" (
	set video_source=--batch-file %1
	)

rem for launching directly and pasting URL
:START
if "%~1"=="" set /P video_source=Enter URL 
if "%~1"=="" set video_source="%video_source%"


if NOT "%~1"=="" youtube-dl --get-title %video_source%
youtube-dl --list-formats %video_source%


if "%~1"=="" GOTO START
if NOT "%~1"=="" pause