mkdir "%~dp1\Input"
mkdir "%~dp1\Processed"

python sort.py %1
pause