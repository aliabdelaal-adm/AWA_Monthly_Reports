@echo off
REM AWA Monthly Reports - Simple Start Script for Windows
REM This script provides a one-step solution to start the application
REM Use this if the automatic installation (install.bat) doesn't work for you

cd /d "%~dp0"

echo ===========================================
echo AWA Monthly Reports - Quick Start
echo Animal Welfare Administration
echo Abu Dhabi Municipality
echo ===========================================
echo.

REM Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo X Error: Python is not installed.
    echo Please install Python 3.8 or higher from:
    echo https://www.python.org/downloads/
    pause
    exit /b 1
)

for /f "tokens=2" %%i in ('python --version 2^>^&1') do set PYTHON_VERSION=%%i
echo √ Python %PYTHON_VERSION% detected
echo.

REM Create virtual environment if it doesn't exist
if not exist "venv\" (
    echo Creating virtual environment (first time only^)...
    python -m venv venv
    echo √ Virtual environment created
    echo.
)

REM Activate virtual environment
echo Activating virtual environment...
call venv\Scripts\activate.bat
echo √ Virtual environment activated
echo.

REM Check if dependencies are installed
python -c "import flask" >nul 2>&1
if errorlevel 1 (
    echo Installing dependencies (this may take a few minutes^)...
    python -m pip install --upgrade pip --quiet
    pip install -r requirements.txt --quiet
    echo √ Dependencies installed
    echo.
) else (
    echo √ Dependencies already installed
    echo.
)

REM Create necessary directories
echo Setting up directories...
if not exist "app\static\uploads\" mkdir app\static\uploads
if not exist "app\static\reports\" mkdir app\static\reports
if not exist "data\" mkdir data
echo √ Directories ready
echo.

REM Start the application
echo ===========================================
echo Starting AWA Monthly Reports Application
echo ===========================================
echo.
echo The application is now running at:
echo.
echo     👉 http://localhost:5000
echo.
echo Opening browser automatically in 3 seconds...
echo Press Ctrl+C to stop the application
echo.

REM Open browser in background after a short delay
start /b cmd /c "timeout /t 3 /nobreak >nul && start http://localhost:5000"

python main.py
