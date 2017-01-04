:: Created by Rihards ' dExIT ' Man
@echo off
    setlocal enableextensions disabledelayedexpansion

    set "config=.\base.vnc"
    set /p "vnchost=Enter host : "

    for /f "tokens=*" %%l in ('type "%config%"^&cd.^>"%config%"'
    ) do for /f "tokens=1 delims== " %%a in ("%%~l"
    ) do if /i "%%~a"=="host" (
        >>"%config%" echo(host=%vnchost%
    ) else (
        >>"%config%" echo(%%l
    )

    type "%config%"

    endlocal
	
	start "" base.vnc
