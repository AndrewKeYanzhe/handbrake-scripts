@ECHO OFF

FOR /F "tokens=* delims=" %%x in (parameters.txt) DO (
	set start_in=%%x
	goto :finished_reading_parameters
)
:finished_reading_parameters
rem echo %start_in%


if "%~1"=="" (
	call download.bat ask_url no_pause
	) else (
	call download.bat %1 no_pause
	)

call sort.bat "%start_in%\Download" no_pause

call upscale_8k.bat "%start_in%\Input" no_pause

pause