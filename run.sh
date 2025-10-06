#!/bin/bash

# AWA Monthly Reports - Run Script
# This script sets up and runs the AWA Monthly Reports application

# Change to the script's directory
cd "$(dirname "$0")"

echo "=========================================="
echo "AWA Monthly Reports System"
echo "Animal Welfare Administration"
echo "Abu Dhabi Municipality"
echo "=========================================="
echo ""

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "Error: Python 3 is not installed."
    echo "Please install Python 3.8 or higher."
    exit 1
fi

echo "Python version:"
python3 --version
echo ""

# Create virtual environment if it doesn't exist
if [ ! -d "venv" ]; then
    echo "Creating virtual environment..."
    python3 -m venv venv
    echo "Virtual environment created."
    echo ""
fi

# Activate virtual environment
echo "Activating virtual environment..."
source venv/bin/activate

# Install requirements
echo "Installing/updating dependencies..."
pip install -r requirements.txt --quiet
echo "Dependencies installed."
echo ""

# Create necessary directories
echo "Setting up directories..."
mkdir -p app/static/uploads
mkdir -p app/static/reports
echo "Directories ready."
echo ""

# Run the application
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
