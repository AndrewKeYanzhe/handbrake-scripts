rem :START
rem set /P urls=Enter URL
rem echo %urls%


set formats=bestvideo[height^>=1080][vcodec^^=avc]+bestaudio

rem youtube-dl -o "%~dp1%%(title)s" -f "%formats%" URL %urls%
youtube-dl -o "%~dp1%%(title)s" -f "%formats%" --batch-file %1

set formats=bestvideo[height^>=1080][vcodec^^=vp9]+bestaudio

rem youtube-dl -o "%~dp1%%(title)s" -f "%formats%" URL %urls%
youtube-dl -o "%~dp1%%(title)s" -f "%formats%" --batch-file %1

pause
