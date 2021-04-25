rem drag url_listtxt onto this bat file to run
rem url_list can be for videos and playlists

rem ^ needs to be written as ^^, > needs to be written as ^>, ^is used for multi-line

rem 1080p24
rem 2800
rem avc 2646>vp9 2460,	93.0
rem avc 3090>vp9 2650,	85.8
rem avc 2910>vp9 2080,	71.4
rem avc 1800>vp9 0680,	37.8


rem 1080p30
rem 2900
rem avc 2990>vp9 2650,	88.5
rem avc 3610>vp9 2650,	73.4
rem avc 3630>vp9 1650,	45.4
rem avc 2610>vp9 0980,	37.7


rem 1080p60
rem avc 2730<vp9 2240,	82.1
rem avc 3850<vp9 3040,	79.0


set formats=^
bestvideo[height^>=1080][fps^>30][vcodec^^=av01]+bestaudio/^
bestvideo[height^>=1080][fps^>30][vcodec^^=vp9]+bestaudio/^
bestvideo[height^>=1080][fps^>30][vcodec^^=avc]+bestaudio/^
bestvideo[height^>=1080][fps=30][vcodec^^=av01]+bestaudio/^
bestvideo[height^>=1080][fps=30][vcodec^^=avc1][vbr^>=2600]+bestaudio/^
bestvideo[height^>=1080][fps=30][vcodec=vp9]+bestaudio/^
bestvideo[height^>=1080][fps=30][vcodec^^=avc1]+bestaudio/^
bestvideo[height^>=1080][fps^>24][vcodec^^=av01]+bestaudio/^
bestvideo[height^>=1080][fps^>24][vcodec^^=vp9]+bestaudio/^
bestvideo[height^>=1080][fps^>24][vcodec^^=avc]+bestaudio/^
bestvideo[height^>=1080][fps=24][vcodec^^=av01]+bestaudio/^
bestvideo[height^>=1080][fps=24][vcodec^^=avc1][vbr^>=2600]+bestaudio/^
bestvideo[height^>=1080][fps=24][vcodec=vp9]+bestaudio/^
bestvideo[height^>=1080][fps=24][vcodec^^=avc1]+bestaudio/^
bestvideo[height^>=1080][fps^<24][vcodec^^=av01]+bestaudio/^
bestvideo[height^>=1080][fps^<24][vcodec^^=vp9]+bestaudio/^
bestvideo[height^>=1080][fps^<24][vcodec^^=avc]+bestaudio/^
bestvideo[height^>=720][vcodec^^=av01]+bestaudio/^
bestvideo[height^>=720][vcodec=vp9]+bestaudio/^
bestvideo[height^>=720][vcodec^^=avc1]+bestaudio

youtube-dl -o "%~dp1%%(title)s %%(vcodec)s" -f "%formats%" --batch-file %1
pause