@ECHO OFF
setlocal EnableDelayedExpansion

:: get current directory path, removing trailing slash if needed
set CURRENT_SCRIPT_DIR=%~dp0
if %CURRENT_SCRIPT_DIR:~-1%==\ (
	set CURRENT_SCRIPT_DIR=%CURRENT_SCRIPT_DIR:~0,-1%
)

:: install requirements
pip install -r "%CURRENT_SCRIPT_DIR%\requirements.txt" || exit /b !ERRORLEVEL!

:: create settings.cfg if missing
if not exist "%CURRENT_SCRIPT_DIR%\settings.cfg" (
	copy "%CURRENT_SCRIPT_DIR%\settings.example.cfg" "%CURRENT_SCRIPT_DIR%\settings.cfg"
)

:: update PYTHONPATH to include classes folder
set PYTHONPATH=%CURRENT_SCRIPT_DIR%\classes;%PYTHONPATH%

:: run autorippr
python autorippr.py %* || exit /b !ERRORLEVEL!

endlocal
