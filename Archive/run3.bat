rem @echo off

set output_folder = \Output\
 

for %%F in (%1) do echo %%~nxF

set output_path = %output_folder% %%~nxF

%output_path%

pause

E:\Tools\HandBrakeCLI\HandBrakeCLI.exe -i %1 -o %output_path% -e x264 -q 18 -B 320 --width 7680 --height 4320 --encoder-preset ultrafast

pause