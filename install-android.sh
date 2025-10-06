#!/data/data/com.termux/files/usr/bin/bash

# AWA Monthly Reports - Android/Termux Installation Script
# سكريبت التثبيت التلقائي لأندرويد
# This script automates the installation process for Android devices using Termux

set -e  # Exit on any error

# Change to the script's directory
cd "$(dirname "$0")"

echo "=========================================="
echo "AWA Monthly Reports System"
echo "نظام تقارير AWA الشهرية"
echo "Android/Termux Installation Script"
echo "سكريبت التثبيت على أندرويد"
echo "=========================================="
echo ""
echo "This script will automatically:"
echo "هذا السكريبت سيقوم بما يلي تلقائياً:"
echo "  ✓ Check system requirements / التحقق من متطلبات النظام"
echo "  ✓ Create virtual environment / إنشاء البيئة الافتراضية"
echo "  ✓ Install all dependencies / تثبيت جميع المتطلبات"
echo "  ✓ Set up directories / إعداد المجلدات"
echo "  ✓ Start the application / تشغيل التطبيق"
echo ""
echo "⏳ This may take 5-15 minutes on first run..."
echo "⏳ قد يستغرق 5-15 دقيقة في المرة الأولى..."
echo ""

# Check if running on Termux
echo "[1/7] Checking Termux environment..."
echo "[1/7] التحقق من بيئة Termux..."
if [ ! -d "/data/data/com.termux" ]; then
    echo "⚠️  Warning: This script is designed for Termux on Android"
    echo "⚠️  تحذير: هذا السكريبت مصمم لـ Termux على أندرويد"
    echo ""
fi
echo "✓ Running on Termux"
echo "✓ يعمل على Termux"
echo ""

# Check if Python is installed
echo "[2/7] Checking Python installation..."
echo "[2/7] التحقق من تثبيت Python..."
if ! command -v python &> /dev/null; then
    echo "❌ Error: Python is not installed."
    echo "❌ خطأ: Python غير مثبت"
    echo ""
    echo "Please run first / الرجاء تشغيل أولاً:"
    echo "  pkg install python -y"
    echo ""
    exit 1
fi

PYTHON_VERSION=$(python --version 2>&1 | awk '{print $2}')
echo "✓ Python $PYTHON_VERSION is installed"
echo "✓ Python $PYTHON_VERSION مثبت"
echo ""

# Check if pip is installed
echo "[3/7] Checking pip installation..."
echo "[3/7] التحقق من تثبيت pip..."
if ! python -m pip --version &> /dev/null; then
    echo "❌ Error: pip is not installed."
    echo "❌ خطأ: pip غير مثبت"
    echo ""
    exit 1
fi
echo "✓ pip is installed"
echo "✓ pip مثبت"
echo ""

# Create virtual environment
echo "[4/7] Creating virtual environment..."
echo "[4/7] إنشاء البيئة الافتراضية..."
if [ -d "venv" ]; then
    echo "⚠️  Virtual environment already exists"
    echo "⚠️  البيئة الافتراضية موجودة بالفعل"
    echo ""
    echo "Do you want to recreate it? (y/n)"
    echo "هل تريد إعادة إنشائها؟ (y/n)"
    read -r response
    if [ "$response" = "y" ] || [ "$response" = "Y" ]; then
        echo "Removing existing virtual environment..."
        echo "إزالة البيئة الافتراضية الحالية..."
        rm -rf venv
        python -m venv venv
        echo "✓ Virtual environment recreated"
        echo "✓ تم إعادة إنشاء البيئة الافتراضية"
    else
        echo "✓ Using existing virtual environment"
        echo "✓ استخدام البيئة الافتراضية الحالية"
    fi
else
    python -m venv venv
    echo "✓ Virtual environment created"
    echo "✓ تم إنشاء البيئة الافتراضية"
fi
echo ""

# Activate virtual environment
echo "[5/7] Activating virtual environment..."
echo "[5/7] تفعيل البيئة الافتراضية..."
source venv/bin/activate
echo "✓ Virtual environment activated"
echo "✓ تم تفعيل البيئة الافتراضية"
echo ""

# Upgrade pip
echo "[6/7] Installing dependencies..."
echo "[6/7] تثبيت المتطلبات..."
echo "Upgrading pip... / ترقية pip..."
pip install --upgrade pip --quiet

# Install requirements
echo "Installing required packages... / تثبيت الحزم المطلوبة..."
echo "⏳ This may take several minutes on Android..."
echo "⏳ قد يستغرق عدة دقائق على أندرويد..."
if [ -f "requirements.txt" ]; then
    pip install -r requirements.txt
    echo "✓ All dependencies installed successfully"
    echo "✓ تم تثبيت جميع المتطلبات بنجاح"
else
    echo "❌ Error: requirements.txt not found"
    echo "❌ خطأ: requirements.txt غير موجود"
    echo ""
    exit 1
fi
echo ""

# Create necessary directories
echo "[7/7] Setting up application directories..."
echo "[7/7] إعداد مجلدات التطبيق..."
mkdir -p app/static/uploads
mkdir -p app/static/reports
mkdir -p data
echo "✓ All directories created"
echo "✓ تم إنشاء جميع المجلدات"
echo ""

# Display success message
echo "=========================================="
echo "✅ Installation completed successfully!"
echo "✅ تم التثبيت بنجاح!"
echo "=========================================="
echo ""
echo "The AWA Monthly Reports application is now ready!"
echo "تطبيق AWA Monthly Reports جاهز الآن!"
echo ""
echo "To start the application:"
echo "لتشغيل التطبيق:"
echo "  python main.py"
echo ""
echo "Then open your browser to:"
echo "ثم افتح المتصفح على:"
echo "  http://localhost:5000"
echo ""
echo "📱 Android Tips / نصائح أندرويد:"
echo "  • Keep device charged / أبق الجهاز مشحوناً"
echo "  • Use WiFi connection / استخدم اتصال WiFi"
echo "  • To stop: Volume Down + C / للإيقاف: Volume Down + C"
echo ""
echo "Press Enter to start the application now..."
echo "اضغط Enter لتشغيل التطبيق الآن..."
read -r

# Run the application
echo ""
echo "=========================================="
echo "Starting AWA Monthly Reports Application"
echo "تشغيل تطبيق AWA Monthly Reports"
echo "=========================================="
echo ""
echo "The application will be available at:"
echo "التطبيق سيكون متاحاً على:"
echo "  👉 http://localhost:5000"
echo ""
echo "Press Ctrl+C (or Volume Down + C) to stop"
echo "اضغط Ctrl+C (أو Volume Down + C) للإيقاف"
echo ""

python main.py
