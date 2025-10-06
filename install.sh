#!/bin/bash

# AWA Monthly Reports - Automated Installation Script
# This script automatically installs and sets up the AWA Monthly Reports application
# No manual steps required - just run this script!

set -e  # Exit on any error

echo "=========================================="
echo "AWA Monthly Reports System"
echo "Automated Installation Script"
echo "Animal Welfare Administration"
echo "Abu Dhabi Municipality"
echo "=========================================="
echo ""
echo "This script will automatically:"
echo "  1. Check system requirements"
echo "  2. Create a virtual environment"
echo "  3. Install all dependencies"
echo "  4. Set up necessary directories"
echo "  5. Start the application"
echo ""
echo "Please wait while we set everything up for you..."
echo ""

# Check if Python is installed
echo "[1/6] Checking Python installation..."
if ! command -v python3 &> /dev/null; then
    echo "❌ Error: Python 3 is not installed."
    echo ""
    echo "Please install Python 3.8 or higher from:"
    echo "https://www.python.org/downloads/"
    echo ""
    exit 1
fi

PYTHON_VERSION=$(python3 --version 2>&1 | awk '{print $2}')
echo "✓ Python $PYTHON_VERSION is installed"
echo ""

# Check Python version
PYTHON_MAJOR=$(echo $PYTHON_VERSION | cut -d. -f1)
PYTHON_MINOR=$(echo $PYTHON_VERSION | cut -d. -f2)

if [ "$PYTHON_MAJOR" -lt 3 ] || ([ "$PYTHON_MAJOR" -eq 3 ] && [ "$PYTHON_MINOR" -lt 8 ]); then
    echo "❌ Error: Python 3.8 or higher is required."
    echo "   You have Python $PYTHON_VERSION"
    echo ""
    exit 1
fi

# Check if pip is installed
echo "[2/6] Checking pip installation..."
if ! python3 -m pip --version &> /dev/null; then
    echo "❌ Error: pip is not installed."
    echo ""
    echo "Please install pip first."
    echo ""
    exit 1
fi

echo "✓ pip is installed"
echo ""

# Create virtual environment
echo "[3/6] Creating virtual environment..."
if [ -d "venv" ]; then
    echo "Virtual environment already exists."
    echo "Do you want to recreate it? (y/n)"
    read -r response
    if [ "$response" = "y" ] || [ "$response" = "Y" ]; then
        echo "Removing existing virtual environment..."
        rm -rf venv
        python3 -m venv venv
        echo "✓ Virtual environment recreated"
    else
        echo "✓ Using existing virtual environment"
    fi
else
    python3 -m venv venv
    echo "✓ Virtual environment created"
fi
echo ""

# Activate virtual environment
echo "[4/6] Activating virtual environment..."
source venv/bin/activate
echo "✓ Virtual environment activated"
echo ""

# Upgrade pip
echo "[5/6] Installing dependencies..."
echo "Upgrading pip..."
pip install --upgrade pip --quiet

# Install requirements
echo "Installing required packages (this may take a few minutes)..."
if [ -f "requirements.txt" ]; then
    pip install -r requirements.txt --quiet
    echo "✓ All dependencies installed successfully"
else
    echo "❌ Error: requirements.txt not found"
    exit 1
fi
echo ""

# Create necessary directories
echo "[6/6] Setting up application directories..."
mkdir -p app/static/uploads
mkdir -p app/static/reports
mkdir -p data
echo "✓ All directories created"
echo ""

# Display success message
echo "=========================================="
echo "✅ Installation completed successfully!"
echo "=========================================="
echo ""
echo "The AWA Monthly Reports application is now ready to use."
echo ""
echo "To start the application:"
echo "  1. Run: ./run.sh"
echo "  2. Open your browser to: http://localhost:5000"
echo ""
echo "Or, you can start it now by pressing Enter..."
read -r

# Run the application
echo ""
echo "=========================================="
echo "Starting AWA Monthly Reports Application"
echo "=========================================="
echo ""
echo "The application will be available at:"
echo "http://localhost:5000"
echo ""
echo "Press Ctrl+C to stop the application"
echo ""

python3 main.py
