#!/data/data/com.termux/files/usr/bin/bash

# AWA Monthly Reports - Super Simple Android Setup
# سكريبت التثبيت والتشغيل الفائق البساطة لأندرويد
# One command does everything - no questions asked!
# أمر واحد يفعل كل شيء - بدون أسئلة!

set -e  # Exit on any error

# Change to the script's directory
cd "$(dirname "$0")"

clear

echo "╔════════════════════════════════════════════════╗"
echo "║   AWA Monthly Reports - Android Setup         ║"
echo "║   تطبيق تقارير AWA - التثبيت على أندرويد     ║"
echo "╚════════════════════════════════════════════════╝"
echo ""
echo "🚀 هذا السكريبت سيقوم بكل شيء تلقائياً!"
echo "🚀 This script will do everything automatically!"
echo ""
echo "⏳ قد يستغرق 5-15 دقيقة في المرة الأولى"
echo "⏳ May take 5-15 minutes on first run"
echo ""

# Function to print success message
print_success() {
    echo "✅ $1"
}

# Function to print error message
print_error() {
    echo "❌ $1"
}

# Function to print info message
print_info() {
    echo "ℹ️  $1"
}

# Check if running on Termux
echo "════════════════════════════════════════════════"
echo "📱 [1/8] فحص بيئة Termux / Checking Termux"
echo "════════════════════════════════════════════════"
if [ -d "/data/data/com.termux" ]; then
    print_success "يعمل على Termux / Running on Termux"
else
    print_info "تحذير: قد لا يكون Termux / Warning: May not be Termux"
fi
echo ""

# Check Python installation
echo "════════════════════════════════════════════════"
echo "🐍 [2/8] فحص Python / Checking Python"
echo "════════════════════════════════════════════════"
if ! command -v python &> /dev/null; then
    print_error "Python غير مثبت / Python not installed"
    echo ""
    echo "الرجاء تشغيل هذه الأوامر أولاً:"
    echo "Please run these commands first:"
    echo ""
    echo "  pkg update -y && pkg upgrade -y"
    echo "  pkg install python -y"
    echo ""
    exit 1
fi

PYTHON_VERSION=$(python --version 2>&1 | awk '{print $2}')
print_success "Python $PYTHON_VERSION مثبت / installed"
echo ""

# Install system dependencies if needed
echo "════════════════════════════════════════════════"
echo "📦 [3/8] فحص المتطلبات / Checking dependencies"
echo "════════════════════════════════════════════════"

# Check for git
if ! command -v git &> /dev/null; then
    print_info "تثبيت git / Installing git..."
    pkg install git -y &> /dev/null
    print_success "git مثبت / git installed"
fi

# Check for required build tools
if ! command -v clang &> /dev/null; then
    print_info "تثبيت أدوات البناء / Installing build tools..."
    pkg install clang -y &> /dev/null
    print_success "أدوات البناء مثبتة / Build tools installed"
fi

# Check for image libraries
if ! pkg list-installed 2>/dev/null | grep -q "libjpeg-turbo"; then
    print_info "تثبيت مكتبات الصور / Installing image libraries..."
    pkg install libjpeg-turbo libpng freetype -y &> /dev/null
    print_success "مكتبات الصور مثبتة / Image libraries installed"
fi

print_success "جميع المتطلبات متوفرة / All dependencies available"
echo ""

# Setup storage access
echo "════════════════════════════════════════════════"
echo "💾 [4/8] إعداد التخزين / Setting up storage"
echo "════════════════════════════════════════════════"
if ! [ -d "$HOME/storage" ]; then
    print_info "إعداد الوصول للتخزين / Setting up storage access..."
    print_info "اضغط 'السماح' إذا ظهر طلب / Press 'Allow' if prompted"
    termux-setup-storage 2>/dev/null || true
    sleep 2
fi
print_success "التخزين جاهز / Storage ready"
echo ""

# Create/activate virtual environment
echo "════════════════════════════════════════════════"
echo "🔧 [5/8] إعداد البيئة / Setting up environment"
echo "════════════════════════════════════════════════"
if [ ! -d "venv" ]; then
    print_info "إنشاء البيئة الافتراضية / Creating virtual environment..."
    python -m venv venv
    print_success "البيئة الافتراضية أُنشئت / Virtual environment created"
else
    print_success "البيئة الافتراضية موجودة / Virtual environment exists"
fi

print_info "تفعيل البيئة الافتراضية / Activating virtual environment..."
source venv/bin/activate
print_success "البيئة الافتراضية مفعّلة / Virtual environment activated"
echo ""

# Install Python dependencies
echo "════════════════════════════════════════════════"
echo "📚 [6/8] تثبيت مكتبات Python / Installing Python packages"
echo "════════════════════════════════════════════════"
if ! python -c "import flask" 2>/dev/null; then
    print_info "ترقية pip / Upgrading pip..."
    pip install --upgrade pip --quiet
    
    print_info "تثبيت المكتبات / Installing packages..."
    echo "⏳ هذا قد يستغرق 5-15 دقيقة / This may take 5-15 minutes..."
    echo ""
    
    if [ -f "requirements.txt" ]; then
        # Install packages one by one with better error handling
        while IFS= read -r package; do
            # Skip empty lines and comments
            [[ -z "$package" || "$package" =~ ^#.* ]] && continue
            
            echo "  📦 تثبيت / Installing: $package"
            if pip install "$package" --quiet 2>/dev/null; then
                echo "    ✅ نجح / Success"
            else
                echo "    ⚠️  تحذير / Warning: فشل تثبيت / Failed to install $package"
                echo "    💡 المحاولة بدون quiet / Trying without quiet..."
                pip install "$package" || echo "    ⚠️  تخطي / Skipping $package"
            fi
        done < requirements.txt
        
        print_success "المكتبات مثبتة / Packages installed"
    else
        print_error "requirements.txt غير موجود / requirements.txt not found"
        exit 1
    fi
else
    print_success "المكتبات مثبتة بالفعل / Packages already installed"
fi
echo ""

# Create necessary directories
echo "════════════════════════════════════════════════"
echo "📁 [7/8] إنشاء المجلدات / Creating directories"
echo "════════════════════════════════════════════════"
mkdir -p app/static/uploads
mkdir -p app/static/reports
mkdir -p data
print_success "المجلدات جاهزة / Directories ready"
echo ""

# Network check
echo "════════════════════════════════════════════════"
echo "🌐 [8/8] فحص الشبكة / Checking network"
echo "════════════════════════════════════════════════"

# Check if port 5000 is available
if command -v netstat &> /dev/null; then
    if netstat -tuln 2>/dev/null | grep -q ":5000 "; then
        print_info "المنفذ 5000 مستخدم / Port 5000 is in use"
        print_info "إيقاف العملية السابقة / Stopping previous process..."
        pkill -f "python.*main.py" 2>/dev/null || true
        sleep 2
    fi
fi

print_success "الشبكة جاهزة / Network ready"
echo ""

# Success message
echo "╔════════════════════════════════════════════════╗"
echo "║            ✅ التثبيت اكتمل بنجاح!             ║"
echo "║         ✅ Installation Complete!              ║"
echo "╚════════════════════════════════════════════════╝"
echo ""
echo "🚀 سيبدأ التطبيق الآن / Starting application now..."
echo ""

# Start the application
echo "════════════════════════════════════════════════"
echo "🌟 تشغيل التطبيق / Running Application"
echo "════════════════════════════════════════════════"
echo ""
echo "📱 التطبيق يعمل على / Application running at:"
echo ""
echo "    🔗 http://localhost:5000"
echo "    🔗 http://127.0.0.1:5000"
echo ""
echo "💡 افتح أحد هذه الروابط في متصفحك"
echo "💡 Open one of these links in your browser:"
echo ""
echo "   • Chrome"
echo "   • Firefox"
echo "   • أي متصفح آخر / Any other browser"
echo ""
echo "⏹️  للإيقاف / To stop: Volume Down + C"
echo ""

# Try to open browser automatically
(sleep 3 && {
    if command -v termux-open-url &> /dev/null; then
        echo "🌐 فتح المتصفح / Opening browser..."
        termux-open-url http://localhost:5000 2>/dev/null || \
        termux-open-url http://127.0.0.1:5000 2>/dev/null || \
        echo "⚠️  افتح المتصفح يدوياً / Open browser manually"
    fi
}) &

# Run the application
python main.py

# If we get here, the app was stopped
echo ""
echo "════════════════════════════════════════════════"
echo "✋ التطبيق متوقف / Application stopped"
echo "════════════════════════════════════════════════"
echo ""
echo "لتشغيله مرة أخرى / To start again:"
echo "  cd ~/AWA_Monthly_Reports"
echo "  ./android-setup.sh"
echo ""
