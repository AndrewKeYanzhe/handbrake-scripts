@ECHO OFF
set output_folder_name=Output
set handbrakePath=E:Tools\HandBrakeCLI\HandBrakeCLI.exe




mkdir "%~dp1\%output_folder_name%"

FOR %%i IN (%1\*.*) DO (
	echo %%i

	%handbrakePath% -i "%%i" -o "%~dp1\%output_folder_name%\%%~ni.mkv" -e x264 -q 18 --width 7680 --height 4320 --encoder-preset ultrafast --aencoder copy --crop 0:0:0:0
	del "%%i"
)

if NOT "%2"=="no_pause" pause

