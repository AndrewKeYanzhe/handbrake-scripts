set a=Output
mkdir "%~dp1\%a%"
E:Tools\HandBrakeCLI\HandBrakeCLI.exe -i %1 -o "%~dp1\%a%\%~nx1" -e x264 -q 18 -B 320 --width 7680 --height 4320 --encoder-preset ultrafast
pause