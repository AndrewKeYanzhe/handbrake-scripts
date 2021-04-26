set download_folder_name=Download

rem for launching with url.txt
if NOT "%~1"=="" (
	set video_source=--batch-file %1
	)

rem for launching directly and pasting URL
:START
if "%~1"=="" (
	set /P video_source=Enter URL 
)


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

if "%~1"=="" GOTO START
if NOT "%~1"=="" pause