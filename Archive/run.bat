chcp 65001

@echo off
set /p id="Enter ID: "

echo %id%

pause

ren %id% "input.mp4"

 for /f "delims=" %%i in ("%id%") do set "fileName=%%~nxi"
 echo %fileName%

pause

ren "input.mp4" %fileName%

rem E:\Tools\HandBrakeCLI\HandBrakeCLI.exe -i "F:\Video Edits\Imada Mio re-uploads\in.mp4" -o output.mp4  -e x264 -q 18 -B 320 --width 7680 --height 4320 --encoder-preset ultrafast
E:\Tools\HandBrakeCLI\HandBrakeCLI.exe -i "F:\Video Edits\Imada Mio re-uploads\「美酢(ミチョ)  ビューティーチャージ 希釈篇」 TV-CM 15秒│CJ FOODS JAPAN株式会社.mp4" -o output.mp4  -e x264 -q 18 -B 320 --width 7680 --height 4320 --encoder-preset ultrafast