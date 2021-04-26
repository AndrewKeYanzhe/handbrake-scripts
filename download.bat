set download_folder_name=Download
echo %~dp1%download_folder_name%\
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

youtube-dl -o "%download_path%%%(title)s codec=%%(vcodec)s" -f "%prefer_av1%" --batch-file %1
youtube-dl -o "%download_path%%%(title)s codec=%%(vcodec)s" -f "%prefer_vp9%" --batch-file %1
youtube-dl -o "%download_path%%%(title)s codec=%%(vcodec)s" -f "%prefer_avc%" --batch-file %1
pause