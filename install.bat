@echo off
REM AWA Monthly Reports - Automated Installation Script for Windows
REM This script automatically installs and sets up the AWA Monthly Reports application
REM No manual steps required - just run this script!

REM Change to the script's directory
cd /d "%~dp0"

echo ==========================================
echo AWA Monthly Reports System
echo Automated Installation Script
echo Animal Welfare Administration
echo Abu Dhabi Municipality
echo ==========================================
echo.
echo This script will automatically:
echo   1. Check system requirements
echo   2. Create a virtual environment
echo   3. Install all dependencies
echo   4. Set up necessary directories
echo   5. Start the application
echo.
echo Please wait while we set everything up for you...
echo.

REM Check if Python is installed
echo [1/6] Checking Python installation...
python --version >nul 2>&1
if errorlevel 1 (
    echo X Error: Python is not installed.
    echo.
    echo Please install Python 3.8 or higher from:
    echo https://www.python.org/downloads/
    echo.
    echo Make sure to check "Add Python to PATH" during installation!
    echo.
    pause
    exit /b 1
)

for /f "tokens=2" %%i in ('python --version 2^>^&1') do set PYTHON_VERSION=%%i
echo √ Python %PYTHON_VERSION% is installed
echo.

REM Check if pip is installed
echo [2/6] Checking pip installation...
python -m pip --version >nul 2>&1
if errorlevel 1 (
    echo X Error: pip is not installed.
    echo.
    echo Please install pip first.
    echo.
    pause
    exit /b 1
)

echo √ pip is installed
echo.

REM Create virtual environment
echo [3/6] Creating virtual environment...
if exist "venv\" (
    echo √ Using existing virtual environment
) else (
    python -m venv venv
    echo √ Virtual environment created
)
echo.

REM Activate virtual environment
echo [4/6] Activating virtual environment...
call venv\Scripts\activate.bat
echo √ Virtual environment activated
echo.

REM Upgrade pip
echo [5/6] Installing dependencies...
echo Upgrading pip...
python -m pip install --upgrade pip --quiet

REM Install requirements
echo Installing required packages (this may take a few minutes^)...
if exist "requirements.txt" (
    pip install -r requirements.txt --quiet
    echo √ All dependencies installed successfully
) else (
    echo X Error: requirements.txt not found
    echo.
    echo Current directory: %CD%
    echo.
    echo Please ensure you are running this script from the project root directory.
    echo The directory should contain: requirements.txt, main.py, and app/ folder
    echo.
    pause
    exit /b 1
)
echo.

REM Create necessary directories
echo [6/6] Setting up application directories...
if not exist "app\static\uploads\" mkdir app\static\uploads
if not exist "app\static\reports\" mkdir app\static\reports
if not exist "data\" mkdir data
echo √ All directories created
echo.

REM Display success message
echo ==========================================
echo √ Installation completed successfully!
echo ==========================================
echo.
echo The AWA Monthly Reports application is now ready to use.
echo.

REM Run the application
echo.
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
