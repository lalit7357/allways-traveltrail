@echo off
title Smart Seat Finder - FastAPI Backend Launcher
echo ==============================================================
echo   🚄 STARTING SMART SEAT FINDER FASTAPI BACKEND SERVER
echo ==============================================================
echo.

:: Navigate to root directory
cd "%~dp0"

:: Install/update dependencies
echo [1/2] Installing requirements...
pip install -r requirements.txt
if %ERRORLEVEL% neq 0 (
    echo.
    echo [WARNING] Failed to install dependencies automatically. Make sure Python and pip are installed and added to your PATH.
    echo.
)

echo.
echo [2/2] Launching Uvicorn server on http://127.0.0.1:8080
echo Close this window to stop the server.
echo.
uvicorn api.index:app --reload --host 127.0.0.1 --port 8080

pause
