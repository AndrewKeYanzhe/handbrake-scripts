set download_folder_name=Download

rem for launching with arguments - url.txt or ask_url
if NOT "%~1"=="" (
	rem echo hi
	if NOT "%~1"=="ask_url" set video_source=--batch-file %1
	if "%~1"=="ask_url" set /P video_source=Enter URL 
	)

rem for launching with no arguments and pasting URL
:START
if "%~1"=="" set /P video_source=Enter URL 


set download_path=%~dp1%download_folder_name%\

set prefer_av1=^
bestvideo[vcodec^^=av01]+bestaudio/^
bestvideo[vcodec^^=vp9]+bestaudio/^
bestvideo[vcodec^^=avc]+bestaudio

set prefer_vp9=^
bestvideo[vcodec^^=vp9]+bestaudio/^
bestvideo[vcodec^^=avc]+bestaudio

set prefer_avc=^
bestvideo[vcodec^^=avc]+bestaudio

youtube-dl -o "%download_path%%%(title)s codec=%%(vcodec)s" -f "%prefer_av1%" %video_source%
youtube-dl -o "%download_path%%%(title)s codec=%%(vcodec)s" -f "%prefer_vp9%" %video_source%
youtube-dl -o "%download_path%%%(title)s codec=%%(vcodec)s" -f "%prefer_avc%" %video_source%

rem pause

if "%~1"=="" GOTO START ELSE(
		if NOT "%2"=="no_pause" pause
	)
rem pause