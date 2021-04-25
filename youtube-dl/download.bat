rem drag url_list.txt onto this .bat file to run
rem url_list can be for videos and playlists

rem ^ needs to be written as ^^, > needs to be written as ^>, ^is used for multi-line

rem 1080p24
rem avc 2.91>vp9 2.08,71.4

rem 1080p30
rem avc 3.61>vp2.65,73.4

rem 1080p60
rem avc 2.73<vp9 2.24,82.1
rem avc 3.85<vp9 3.04,79.0


set formats=^
bestvideo[height^>=1080][fps^>30][vcodec^^=av01]+bestaudio/^
bestvideo[height^>=1080][fps^>30][vcodec^^=vp9]+bestaudio/^
bestvideo[height^>=1080][fps^>30][vcodec^^=avc]+bestaudio/^
bestvideo[height^>=1080][fps=30][vcodec^^=av01]+bestaudio/^
bestvideo[height^>=1080][fps=30][vcodec^^=avc1][vbr^>=3500]+bestaudio/^
bestvideo[height^>=1080][fps=30][vcodec=vp9]+bestaudio/^
bestvideo[height^>=1080][fps=30][vcodec^^=avc1]+bestaudio/^
bestvideo[height^>=1080][fps^>24][vcodec^^=av01]+bestaudio/^
bestvideo[height^>=1080][fps^>24][vcodec^^=vp9]+bestaudio/^
bestvideo[height^>=1080][fps^>24][vcodec^^=avc]+bestaudio/^
bestvideo[height^>=1080][fps=24][vcodec^^=av01]+bestaudio/^
bestvideo[height^>=1080][fps=24][vcodec^^=avc1][vbr^>=2800]+bestaudio/^
bestvideo[height^>=1080][fps=24][vcodec=vp9]+bestaudio/^
bestvideo[height^>=1080][fps=24][vcodec^^=avc1]+bestaudio/^
bestvideo[height^>=1080][fps^<24][vcodec^^=av01]+bestaudio/^
bestvideo[height^>=1080][fps^<24][vcodec^^=vp9]+bestaudio/^
bestvideo[height^>=1080][fps^<24][vcodec^^=avc]+bestaudio/^
bestvideo[height^>=720][vcodec^^=av01]+bestaudio/^
bestvideo[height^>=720][vcodec=vp9]+bestaudio/^
bestvideo[height^>=720][vcodec^^=avc1]+bestaudio

youtube-dl -o "%~dp1%%(title)s" -f "%formats%" --batch-file %1
rem pause