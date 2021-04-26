rem drag video file on to this .bat file to resize
rem new video is saved in a folder next to original video
@ECHO OFF

set output_folder_name=Output
set handbrakePath=E:Tools\HandBrakeCLI\HandBrakeCLI.exe

mkdir "%~dp1\%output_folder_name%"

rem this empties the output folder before writing new videos
rem rmdir /s /q "%~dp1\%output_folder_name%"
rem mkdir "%~dp1\%output_folder_name%"  dfdf

:TOP
IF (%1) == () GOTO END

%handbrakePath% -i %1 -o "%~dp1\%output_folder_name%\%~n1.mkv" -e x264 -q 18 --width 7680 --height 4320 --encoder-preset ultrafast --aencoder copy --crop 0:0:0:0

SHIFT
GOTO TOP

:END
pause













