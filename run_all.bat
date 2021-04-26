if "%~1"=="" (
	call download.bat ask_url no_pause
	) else (
	call download.bat %1 no_pause
	)

call sort.bat "%~dp1Download" no_pause

call upscale_8k.bat "%~dp1Input" no_pause

pause