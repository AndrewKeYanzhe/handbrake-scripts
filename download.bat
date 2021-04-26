rem drag url_list.txt onto this bat file to run
rem url_list can be for videos and playlists
rem video is downloaded in all 3 codecs if available

rem ^^ is ^
rem ^> is >
rem ^ is for multi-line

set download_folder_name=Download
echo %~dp1%download_folder_name%\
set download_path=%~dp1%download_folder_name%\
rem pause

set prefer_av1=^
bestvideo[vcodec^^=av01]+bestaudio/^
bestvideo[vcodec^^=vp9]+bestaudio/^
bestvideo[vcodec^^=avc]+bestaudio

set prefer_vp9=^
bestvideo[vcodec^^=vp9]+bestaudio/^
bestvideo[vcodec^^=avc]+bestaudio

set prefer_avc=^
bestvideo[vcodec^^=avc]+bestaudio

youtube-dl -o "%download_path%%%(title)s codec=%%(vcodec)s" -f "%prefer_av1%" --batch-file %1
youtube-dl -o "%download_path%%%(title)s codec=%%(vcodec)s" -f "%prefer_vp9%" --batch-file %1
youtube-dl -o "%download_path%%%(title)s codec=%%(vcodec)s" -f "%prefer_avc%" --batch-file %1
pause