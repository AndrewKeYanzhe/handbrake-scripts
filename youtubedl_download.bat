rem drag url_list.txt onto this .bat file to run
rem url_list can be for videos and playlists

rem 1080p: av1>avc>vp9
rem  720p: av1>vp9>avc

youtube-dl -o "%~dp1%%(title)s" -f "bestvideo[height>=1080][vcodec^=av01]+bestaudio/bestvideo[height>=1080][vcodec^=avc1]+bestaudio/bestvideo[height>=1080][vcodec=vp9]+bestaudio/bestvideo[height>=720][vcodec^=av01]+bestaudio/bestvideo[height>=720][vcodec=vp9]+bestaudio/bestvideo[height>=720][vcodec^=avc1]+bestaudio/" --batch-file %1
pause