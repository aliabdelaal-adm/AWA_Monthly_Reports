# كيفية استخدام سكريبتات البدء الجديدة / How to Use the New Start Scripts

## 🎯 الغرض / Purpose

تم إنشاء السكريبتات الجديدة `start.sh` و `start.bat` لحل مشكلة التثبيت الآلي وتوفير طريقة أسهل وأسرع لتشغيل التطبيق.

The new `start.sh` and `start.bat` scripts were created to solve the automatic installation issue and provide an easier and faster way to run the application.

---

## 🆚 الفرق بين السكريبتات / Difference Between Scripts

### start.sh / start.bat (الجديد / New) ⭐

**المزايا / Advantages:**
- ✅ **بدون أسئلة تفاعلية** - يبدأ مباشرة / No interactive questions - starts immediately
- ✅ **ذكي** - يتحقق من وجود البيئة الافتراضية قبل إنشائها / Smart - checks if venv exists before creating
- ✅ **ذكي** - يتحقق من تثبيت المكتبات قبل التثبيت / Smart - checks if packages are installed before installing
- ✅ **سريع** - أسرع في التشغيل المتكرر / Fast - faster on repeated runs
- ✅ **مناسب للاستخدام اليومي** / Suitable for daily use
- ✅ **رسائل واضحة ومباشرة** / Clear and direct messages

**متى تستخدمه / When to use:**
- عند تشغيل التطبيق بشكل متكرر
- عندما تريد البدء السريع بدون تأخير
- عندما تواجه مشاكل مع السكريبتات القديمة
- When running the application repeatedly
- When you want a quick start without delays
- When facing issues with old scripts

### install.sh / install.bat (القديم / Old)

**الخصائص / Characteristics:**
- قد يسأل أسئلة تفاعلية (مثل: هل تريد إعادة إنشاء البيئة الافتراضية؟)
- مصمم للتثبيت الأولي
- قد يكون أبطأ
- May ask interactive questions (e.g., do you want to recreate the virtual environment?)
- Designed for initial installation
- May be slower

**متى تستخدمه / When to use:**
- التثبيت الأول فقط
- عندما تريد التحكم الكامل في عملية التثبيت
- First-time installation only
- When you want full control over the installation process

---

## 🚀 كيفية الاستخدام / How to Use

### Windows

```cmd
# الطريقة 1: النقر المزدوج
# انقر مرتين على start.bat
# Method 1: Double-click
# Double-click on start.bat

# الطريقة 2: سطر الأوامر
# Method 2: Command line
start.bat
```

### macOS/Linux

```bash
# امنح صلاحيات التنفيذ (مرة واحدة فقط)
# Give execution permissions (only once)
chmod +x start.sh

# نفّذ السكريبت
# Run the script
./start.sh
```

---

## 📋 ماذا يفعل السكريبت؟ / What Does the Script Do?

1. ✅ يتحقق من تثبيت Python / Checks Python installation
2. ✅ ينشئ البيئة الافتراضية (إذا لم تكن موجودة) / Creates virtual environment (if not exists)
3. ✅ يفعّل البيئة الافتراضية / Activates virtual environment
4. ✅ يتحقق من تثبيت المكتبات / Checks if packages are installed
5. ✅ يثبت المكتبات (إذا لم تكن مثبتة) / Installs packages (if not installed)
6. ✅ ينشئ المجلدات المطلوبة / Creates required directories
7. ✅ يشغل التطبيق على localhost:5000 / Starts the application on localhost:5000

---

## 🎉 النتيجة المتوقعة / Expected Result

بعد تشغيل السكريبت، ستشاهد:

After running the script, you will see:

```
===========================================
Starting AWA Monthly Reports Application
===========================================

The application is now running at:

    👉 http://localhost:5000

Open your web browser and navigate to the URL above.

Press Ctrl+C to stop the application

 * Serving Flask app 'main'
 * Debug mode: on
 * Running on http://127.0.0.1:5000
```

افتح المتصفح وانتقل إلى: **http://localhost:5000**

Open your browser and go to: **http://localhost:5000**

---

## 🔧 استكشاف الأخطاء / Troubleshooting

إذا واجهت أي مشاكل، راجع:

If you face any issues, check:

📖 **[TROUBLESHOOTING_AR.md](TROUBLESHOOTING_AR.md)** - دليل شامل لحل جميع المشاكل

---

## 💡 نصائح / Tips

1. **لا تغلق نافذة Terminal/Command Prompt** أثناء تشغيل التطبيق
   Don't close the Terminal/Command Prompt window while the app is running

2. **لإيقاف التطبيق**: اضغط `Ctrl+C`
   To stop the application: Press `Ctrl+C`

3. **للتشغيل مرة أخرى**: نفّذ السكريبت مرة أخرى
   To run again: Execute the script again

4. **المرة الأولى أبطأ**: تستغرق 2-5 دقائق لتثبيت المكتبات
   First time is slower: Takes 2-5 minutes to install packages

5. **المرات اللاحقة أسرع**: تبدأ في ثوانٍ
   Subsequent times are faster: Starts in seconds

---

## ✅ تأكيد النجاح / Confirm Success

التطبيق يعمل بنجاح عندما:
The application is running successfully when:

- ✅ ترى رسالة "Running on http://127.0.0.1:5000"
- ✅ يمكنك فتح http://localhost:5000 في المتصفح
- ✅ تشاهد الصفحة الرئيسية لنظام AWA Monthly Reports

---

**تم إنشاء هذا الدليل لمساعدتك في استخدام السكريبتات الجديدة بسهولة.**
