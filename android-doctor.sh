#!/data/data/com.termux/files/usr/bin/bash

# AWA Monthly Reports - Android Diagnostic Tool
# أداة تشخيص المشاكل على أندرويد
# Automatically diagnoses and fixes common Android issues

clear

echo "╔════════════════════════════════════════════════╗"
echo "║   AWA Android Doctor - أداة التشخيص           ║"
echo "║   Diagnosing your system / فحص نظامك          ║"
echo "╚════════════════════════════════════════════════╝"
echo ""

ISSUES_FOUND=0
FIXES_APPLIED=0

# Function to print section header
print_section() {
    echo ""
    echo "════════════════════════════════════════════════"
    echo "📋 $1"
    echo "════════════════════════════════════════════════"
}

# Function to check and report status
check_status() {
    local status=$1
    local message=$2
    if [ "$status" = "ok" ]; then
        echo "  ✅ $message"
    elif [ "$status" = "warning" ]; then
        echo "  ⚠️  $message"
        ((ISSUES_FOUND++))
    else
        echo "  ❌ $message"
        ((ISSUES_FOUND++))
    fi
}

# Check 1: Termux Environment
print_section "1. فحص بيئة Termux / Checking Termux Environment"
if [ -d "/data/data/com.termux" ]; then
    check_status "ok" "يعمل على Termux / Running on Termux"
    
    # Check Termux version
    if [ -f "/data/data/com.termux/files/usr/bin/termux-info" ]; then
        check_status "ok" "Termux tools متوفرة / available"
    else
        check_status "warning" "بعض أدوات Termux قد تكون مفقودة / Some Termux tools may be missing"
    fi
else
    check_status "error" "لا يعمل على Termux / Not running on Termux"
fi

# Check 2: Python Installation
print_section "2. فحص Python / Checking Python"
if command -v python &> /dev/null; then
    PYTHON_VERSION=$(python --version 2>&1 | awk '{print $2}')
    check_status "ok" "Python $PYTHON_VERSION مثبت / installed"
    
    # Check if pip works
    if python -m pip --version &> /dev/null; then
        PIP_VERSION=$(python -m pip --version 2>&1 | awk '{print $2}')
        check_status "ok" "pip $PIP_VERSION يعمل / working"
    else
        check_status "error" "pip لا يعمل / pip not working"
        echo ""
        echo "💡 الحل / Fix:"
        echo "  python -m ensurepip --upgrade"
    fi
else
    check_status "error" "Python غير مثبت / not installed"
    echo ""
    echo "💡 الحل / Fix:"
    echo "  pkg install python -y"
fi

# Check 3: Required System Packages
print_section "3. فحص حزم النظام / Checking System Packages"

required_packages=("git" "clang" "libjpeg-turbo" "libpng" "freetype")
for pkg in "${required_packages[@]}"; do
    if command -v "$pkg" &> /dev/null || pkg list-installed 2>/dev/null | grep -q "^$pkg/"; then
        check_status "ok" "$pkg مثبت / installed"
    else
        check_status "warning" "$pkg غير مثبت / not installed"
        echo "      💡 لتثبيته / To install: pkg install $pkg -y"
    fi
done

# Check 4: Storage Access
print_section "4. فحص الوصول للتخزين / Checking Storage Access"
if [ -d "$HOME/storage" ]; then
    if [ -r "$HOME/storage/shared" ]; then
        check_status "ok" "الوصول للتخزين متاح / Storage access available"
    else
        check_status "warning" "الوصول للتخزين محدود / Limited storage access"
        echo ""
        echo "💡 الحل / Fix:"
        echo "  termux-setup-storage"
    fi
else
    check_status "warning" "التخزين غير مفعّل / Storage not setup"
    echo ""
    echo "💡 الحل / Fix:"
    echo "  termux-setup-storage"
fi

# Check 5: Project Files
print_section "5. فحص ملفات المشروع / Checking Project Files"
cd "$(dirname "$0")"

required_files=("main.py" "requirements.txt" "app")
for file in "${required_files[@]}"; do
    if [ -e "$file" ]; then
        check_status "ok" "$file موجود / exists"
    else
        check_status "error" "$file مفقود / missing"
    fi
done

# Check 6: Virtual Environment
print_section "6. فحص البيئة الافتراضية / Checking Virtual Environment"
if [ -d "venv" ]; then
    check_status "ok" "البيئة الافتراضية موجودة / Virtual environment exists"
    
    if [ -f "venv/bin/activate" ]; then
        check_status "ok" "سكريبت التفعيل موجود / Activation script exists"
    else
        check_status "error" "سكريبت التفعيل مفقود / Activation script missing"
        echo ""
        echo "💡 الحل / Fix:"
        echo "  rm -rf venv"
        echo "  python -m venv venv"
    fi
else
    check_status "warning" "البيئة الافتراضية غير موجودة / Virtual environment not created"
    echo ""
    echo "💡 الحل / Fix:"
    echo "  python -m venv venv"
fi

# Check 7: Python Dependencies
print_section "7. فحص مكتبات Python / Checking Python Dependencies"
if [ -d "venv" ] && [ -f "venv/bin/activate" ]; then
    source venv/bin/activate 2>/dev/null || true
    
    critical_packages=("flask" "werkzeug" "jinja2")
    for pkg in "${critical_packages[@]}"; do
        if python -c "import $pkg" 2>/dev/null; then
            check_status "ok" "$pkg مثبت / installed"
        else
            check_status "error" "$pkg غير مثبت / not installed"
        fi
    done
else
    check_status "warning" "لا يمكن فحص المكتبات / Cannot check packages (no venv)"
fi

# Check 8: Network and Port
print_section "8. فحص الشبكة والمنفذ / Checking Network and Port"

# Check if port 5000 is in use
if command -v netstat &> /dev/null; then
    if netstat -tuln 2>/dev/null | grep -q ":5000 "; then
        check_status "warning" "المنفذ 5000 مستخدم / Port 5000 in use"
        echo ""
        echo "💡 الحل / Fix:"
        echo "  pkill -f 'python.*main.py'"
    else
        check_status "ok" "المنفذ 5000 متاح / Port 5000 available"
    fi
else
    check_status "ok" "المنفذ 5000 (لا يمكن التحقق) / Port 5000 (cannot verify)"
fi

# Check localhost resolution
if ping -c 1 127.0.0.1 &> /dev/null; then
    check_status "ok" "localhost يعمل / localhost working"
else
    check_status "warning" "localhost قد لا يعمل / localhost may not work"
fi

# Check 9: Battery Optimization
print_section "9. فحص إعدادات البطارية / Checking Battery Settings"
if command -v dumpsys &> /dev/null; then
    check_status "ok" "يمكن فحص إعدادات البطارية / Can check battery settings"
    echo ""
    echo "💡 نصيحة / Tip:"
    echo "  للحصول على أفضل أداء / For best performance:"
    echo "  Settings > Battery > Termux > Don't optimize"
else
    check_status "ok" "لا يمكن فحص تلقائي / Cannot auto-check"
    echo ""
    echo "💡 نصيحة / Tip:"
    echo "  تأكد من إيقاف تحسين البطارية لـ Termux"
    echo "  Make sure battery optimization is disabled for Termux"
fi

# Check 10: Memory
print_section "10. فحص الذاكرة / Checking Memory"
if command -v free &> /dev/null; then
    AVAILABLE_MB=$(free -m | awk 'NR==2 {print $7}')
    if [ "$AVAILABLE_MB" -gt 500 ]; then
        check_status "ok" "ذاكرة كافية: ${AVAILABLE_MB}MB / Sufficient memory: ${AVAILABLE_MB}MB"
    elif [ "$AVAILABLE_MB" -gt 200 ]; then
        check_status "warning" "ذاكرة منخفضة: ${AVAILABLE_MB}MB / Low memory: ${AVAILABLE_MB}MB"
        echo "      💡 أغلق بعض التطبيقات / Close some apps"
    else
        check_status "error" "ذاكرة غير كافية: ${AVAILABLE_MB}MB / Insufficient memory: ${AVAILABLE_MB}MB"
        echo "      💡 أعد تشغيل الجهاز / Restart device"
    fi
else
    check_status "ok" "لا يمكن فحص الذاكرة / Cannot check memory"
fi

# Summary
echo ""
echo "╔════════════════════════════════════════════════╗"
echo "║            📊 ملخص التشخيص / Summary           ║"
echo "╚════════════════════════════════════════════════╝"
echo ""

if [ $ISSUES_FOUND -eq 0 ]; then
    echo "  ✅ لم يتم العثور على مشاكل!"
    echo "  ✅ No issues found!"
    echo ""
    echo "  إذا كان التطبيق لا يعمل، جرب:"
    echo "  If the app doesn't work, try:"
    echo ""
    echo "    ./android-setup.sh"
else
    echo "  ⚠️  تم العثور على $ISSUES_FOUND مشكلة"
    echo "  ⚠️  Found $ISSUES_FOUND issue(s)"
    echo ""
    echo "  📋 راجع الحلول المقترحة أعلاه"
    echo "  📋 Review suggested fixes above"
    echo ""
    echo "  أو قم بالتثبيت من جديد:"
    echo "  Or reinstall using:"
    echo ""
    echo "    ./android-setup.sh"
fi

echo ""
echo "════════════════════════════════════════════════"
echo ""
echo "💡 لمزيد من المساعدة / For more help:"
echo "   📖 راجع TROUBLESHOOTING_AR.md"
echo "   📖 Check TROUBLESHOOTING_AR.md"
echo ""
echo "💡 للإبلاغ عن مشكلة / To report an issue:"
echo "   🐛 افتح issue على GitHub"
echo "   🐛 Open an issue on GitHub"
echo ""
