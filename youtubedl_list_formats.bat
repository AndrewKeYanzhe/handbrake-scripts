rem drag url_list.txt onto this .bat file to run




if NOT "%~1"=="" youtube-dl --list-formats --batch-file %1
if NOT "%~1"=="" pause


:START
set /P urls=Enter URL
echo %urls%
youtube-dl --list-formats %urls%

if "%~1"=="" GOTO START
