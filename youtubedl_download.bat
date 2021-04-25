rem drag url_list.txt onto this .bat file to run
rem url_list can be for videos and playlists

rem 1080p: 399,137,238: av1,avc,vp9
rem  720p: 398,247,136: av1,vp9,avc

youtube-dl -o "%~dp1%%(title)s" -f 399+bestaudio/137+bestaudio/248+bestaudio/398+bestaudio/247+bestaudio/136+bestaudio --batch-file %1
pause