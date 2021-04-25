rem drag url_listtxt onto this bat file to run
rem url_list can be for videos and playlists
rem video is downloaded in all 3 codecs if available

rem ^^ is ^
rem ^> is >
rem ^ is for multi-line

set prefer_av1=^
bestvideo[vcodec^^=av01]+bestaudio/^
bestvideo[vcodec^^=vp9]+bestaudio/^
bestvideo[vcodec^^=avc]+bestaudio

set prefer_vp9=^
bestvideo[vcodec^^=vp9]+bestaudio/^
bestvideo[vcodec^^=avc]+bestaudio

set prefer_avc=^
bestvideo[vcodec^^=avc]+bestaudio

youtube-dl -o "%~dp1%%(title)s %%(vcodec)s" -f "%prefer_av1%" --batch-file %1
youtube-dl -o "%~dp1%%(title)s %%(vcodec)s" -f "%prefer_vp9%" --batch-file %1
youtube-dl -o "%~dp1%%(title)s %%(vcodec)s" -f "%prefer_avc%" --batch-file %1
pause