mkdir "%~dp1\Input"
mkdir "%~dp1\Archive"

python sort.py %1
if NOT "%2"=="no_pause" pause
rem pause