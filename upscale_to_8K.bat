set output_folder_name=Output
mkdir "%~dp1\%output_folder_name%"
E:Tools\HandBrakeCLI\HandBrakeCLI.exe -i %1 -o "%~dp1\%output_folder_name%\%~nx1" -e x264 -q 18 --width 7680 --height 4320 --encoder-preset ultrafast --aencoder copy
pause