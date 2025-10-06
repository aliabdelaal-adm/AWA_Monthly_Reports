@echo off
REM AWA Monthly Reports - Run Script for Windows
REM This script sets up and runs the AWA Monthly Reports application

REM Change to the script's directory
cd /d "%~dp0"

echo ==========================================
echo AWA Monthly Reports System
echo Animal Welfare Administration
echo Abu Dhabi Municipality
echo ==========================================
echo.

REM Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo Error: Python is not installed.
    echo Please install Python 3.8 or higher.
    pause
    exit /b 1
)

echo Python version:
python --version
echo.

REM Create virtual environment if it doesn't exist
if not exist "venv\" (
    echo Creating virtual environment...
    python -m venv venv
    echo Virtual environment created.
    echo.
)

REM Activate virtual environment
echo Activating virtual environment...
call venv\Scripts\activate.bat

REM Install requirements
echo Installing/updating dependencies...
pip install -r requirements.txt --quiet
echo Dependencies installed.
echo.

REM Create necessary directories
echo Setting up directories...
if not exist "app\static\uploads\" mkdir app\static\uploads
if not exist "app\static\reports\" mkdir app\static\reports
echo Directories ready.
echo.

REM Run the application
echo ==========================================
echo Starting AWA Monthly Reports Application
echo ==========================================
echo.
echo The application will be available at:
echo http://localhost:5000
echo.
echo Opening browser automatically in 3 seconds...
echo Press Ctrl+C to stop the application
echo.

REM Open browser in background after a short delay
start /b cmd /c "timeout /t 3 /nobreak >nul && start http://localhost:5000"

python main.py
