@echo off
setlocal
cd /d "%~dp0"
echo =============================================
echo       DraftMate AI Legal Drafting Studio
echo =============================================
where py >nul 2>nul
if %errorlevel%==0 (
  py -3 -m pip install -r requirements.txt
  if errorlevel 1 goto error
  py -3 run.py
) else (
  python -m pip install -r requirements.txt
  if errorlevel 1 goto error
  python run.py
)
goto end
:error
echo.
echo Setup failed. Check Python installation and the error above.
pause
:end
endlocal
