#!/data/data/com.termux/files/usr/bin/bash

# AWA Monthly Reports - Android Quick Start Script
# سكريبت التشغيل السريع لأندرويد
# Simple one-command start script for Android/Termux

set -e  # Exit on any error

# Change to the script's directory
cd "$(dirname "$0")"

echo "==========================================="
echo "AWA Monthly Reports - Quick Start"
echo "تقارير AWA الشهرية - بداية سريعة"
echo "Android/Termux Edition"
echo "==========================================="
echo ""

# Check if Python is installed
if ! command -v python &> /dev/null; then
    echo "❌ Error: Python is not installed."
    echo "❌ خطأ: Python غير مثبت"
    echo ""
    echo "Please install Python first:"
    echo "الرجاء تثبيت Python أولاً:"
    echo "  pkg install python -y"
    echo ""
    exit 1
fi

echo "✓ Python $(python --version | awk '{print $2}') detected"
echo "✓ تم العثور على Python $(python --version | awk '{print $2}')"
echo ""

# Create virtual environment if it doesn't exist
if [ ! -d "venv" ]; then
    echo "Creating virtual environment (first time only)..."
    echo "إنشاء البيئة الافتراضية (المرة الأولى فقط)..."
    python -m venv venv
    echo "✓ Virtual environment created"
    echo "✓ تم إنشاء البيئة الافتراضية"
    echo ""
fi

# Activate virtual environment
echo "Activating virtual environment..."
echo "تفعيل البيئة الافتراضية..."
source venv/bin/activate
echo "✓ Virtual environment activated"
echo "✓ تم تفعيل البيئة الافتراضية"
echo ""

# Check if dependencies are installed
if ! python -c "import flask" 2>/dev/null; then
    echo "Installing dependencies (this may take 5-15 minutes)..."
    echo "تثبيت المتطلبات (قد يستغرق 5-15 دقيقة)..."
    pip install --upgrade pip --quiet
    pip install -r requirements.txt
    echo "✓ Dependencies installed"
    echo "✓ تم تثبيت المتطلبات"
    echo ""
else
    echo "✓ Dependencies already installed"
    echo "✓ المتطلبات مثبتة بالفعل"
    echo ""
fi

# Create necessary directories
echo "Setting up directories..."
echo "إعداد المجلدات..."
mkdir -p app/static/uploads
mkdir -p app/static/reports
mkdir -p data
echo "✓ Directories ready"
echo "✓ المجلدات جاهزة"
echo ""

# Start the application
echo "==========================================="
echo "Starting AWA Monthly Reports Application"
echo "تشغيل تطبيق AWA Monthly Reports"
echo "==========================================="
echo ""
echo "The application is now running at:"
echo "التطبيق يعمل الآن على:"
echo ""
echo "    👉 http://localhost:5000"
echo ""
echo "Opening browser automatically in 3 seconds..."
echo "فتح المتصفح تلقائياً خلال 3 ثوان..."
echo ""
echo "📱 Android Tips / نصائح أندرويد:"
echo "  • To stop: Volume Down + C"
echo "  • للإيقاف: Volume Down + C"
echo "  • Keep screen on for best performance"
echo "  • أبق الشاشة مضاءة للأداء الأفضل"
echo ""

# Try to open browser automatically on Android/Termux
(sleep 3 && (command -v termux-open-url &> /dev/null && termux-open-url http://localhost:5000 || command -v xdg-open &> /dev/null && xdg-open http://localhost:5000 || echo "Please open http://localhost:5000 in your browser manually / الرجاء فتح http://localhost:5000 في المتصفح يدوياً")) &

python main.py
