rem drag url_list.txt onto this .bat file to run
rem url_list can be for videos and playlists
echo %~dp1

youtube-dl -o "%~dp1%%(title)s" -f 399+bestaudio/137+bestaudio/248+bestaudio --batch-file %1
pause