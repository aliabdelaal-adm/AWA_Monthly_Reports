#!/bin/bash

# AWA Monthly Reports - Simple Start Script
# This script provides a one-step solution to start the application
# Use this if the automatic installation (install.sh) doesn't work for you

set -e  # Exit on any error

# Change to the script's directory
cd "$(dirname "$0")"

echo "==========================================="
echo "AWA Monthly Reports - Quick Start"
echo "Animal Welfare Administration"
echo "Abu Dhabi Municipality"
echo "==========================================="
echo ""

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "❌ Error: Python 3 is not installed."
    echo "Please install Python 3.8 or higher from:"
    echo "https://www.python.org/downloads/"
    exit 1
fi

echo "✓ Python $(python3 --version | awk '{print $2}') detected"
echo ""

# Create virtual environment if it doesn't exist
if [ ! -d "venv" ]; then
    echo "Creating virtual environment (first time only)..."
    python3 -m venv venv
    echo "✓ Virtual environment created"
    echo ""
fi

# Activate virtual environment
echo "Activating virtual environment..."
source venv/bin/activate
echo "✓ Virtual environment activated"
echo ""

# Check if dependencies are installed
if ! python3 -c "import flask" 2>/dev/null; then
    echo "Installing dependencies (this may take a few minutes)..."
    pip install --upgrade pip --quiet
    pip install -r requirements.txt --quiet
    echo "✓ Dependencies installed"
    echo ""
else
    echo "✓ Dependencies already installed"
    echo ""
fi

# Create necessary directories
echo "Setting up directories..."
mkdir -p app/static/uploads
mkdir -p app/static/reports
mkdir -p data
echo "✓ Directories ready"
echo ""

# Start the application
echo "==========================================="
echo "Starting AWA Monthly Reports Application"
echo "==========================================="
echo ""
echo "The application is now running at:"
echo ""
echo "    👉 http://localhost:5000"
echo ""
echo "Opening browser automatically in 3 seconds..."
echo "Press Ctrl+C to stop the application"
echo ""

# Open browser in background after a short delay
(sleep 3 && (command -v xdg-open &> /dev/null && xdg-open http://localhost:5000 || command -v open &> /dev/null && open http://localhost:5000 || echo "Please open http://localhost:5000 in your browser manually")) &

python3 main.py
