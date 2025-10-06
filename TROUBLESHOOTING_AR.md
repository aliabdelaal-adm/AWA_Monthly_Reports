# دليل حل المشاكل / Troubleshooting Guide

## 🚨 مشكلة: لا أستطيع تشغيل التثبيت الآلي

### الحل السريع / Quick Solution

إذا كنت تواجه مشاكل مع سكريبتات التثبيت الآلية (`install.sh` أو `install.bat`)، يمكنك استخدام السكريبتات المبسطة الجديدة:

#### Windows (ويندوز)

1. **انقر مرتين** على ملف `start.bat`
   
   أو استخدم سطر الأوامر:
   ```cmd
   start.bat
   ```

#### macOS/Linux (ماك/لينكس)

1. **افتح Terminal** في مجلد المشروع
2. نفّذ:
   ```bash
   ./start.sh
   ```

### ما الفرق بين start.sh/start.bat و install.sh/install.bat؟

**start.sh/start.bat** (السكريبتات الجديدة):
- ✅ أبسط وأسهل في الاستخدام
- ✅ يتحقق من وجود البيئة الافتراضية قبل إنشائها
- ✅ يتحقق من وجود المكتبات قبل تثبيتها
- ✅ مناسب للاستخدام المتكرر
- ✅ يبدأ البرنامج مباشرة بدون أسئلة

**install.sh/install.bat** (السكريبتات القديمة):
- قد يسأل أسئلة تفاعلية
- قد يحاول إعادة إنشاء البيئة الافتراضية

---

## 🔍 مشاكل شائعة وحلولها / Common Issues and Solutions

### المشكلة 1: "Python is not installed"

**الحل:**
1. قم بتحميل Python 3.8 أو أحدث من: https://www.python.org/downloads/
2. أثناء التثبيت، تأكد من تفعيل خيار "Add Python to PATH"
3. أعد تشغيل الكمبيوتر بعد التثبيت
4. جرب تشغيل `start.sh` أو `start.bat` مرة أخرى

### المشكلة 2: البرنامج لا يعمل على localhost:5000

**الحل:**
1. تأكد من أن البرنامج قيد التشغيل (شاهد رسالة "Running on http://127.0.0.1:5000")
2. افتح المتصفح وانتقل إلى: `http://localhost:5000`
3. إذا لم يعمل، جرب: `http://127.0.0.1:5000`
4. تأكد من أن البرنامج يعمل في الـ Terminal ولم يتوقف

### المشكلة 3: "Permission denied" أو خطأ في الصلاحيات

**macOS/Linux:**
```bash
chmod +x start.sh
./start.sh
```

**Windows:**
- انقر بزر الماوس الأيمن على `start.bat`
- اختر "Run as administrator"

### المشكلة 4: البرنامج يتوقف بعد التشغيل

**الحل:**
1. لا تغلق نافذة Terminal أو Command Prompt
2. يجب أن تبقى النافذة مفتوحة أثناء عمل البرنامج
3. ستظهر رسائل في النافذة أثناء عمل البرنامج
4. لإيقاف البرنامج، اضغط `Ctrl+C`

### المشكلة 5: خطأ "pip is not installed"

**الحل:**

**Windows:**
```cmd
python -m ensurepip --upgrade
```

**macOS/Linux:**
```bash
python3 -m ensurepip --upgrade
```

---

## 📋 التثبيت اليدوي الكامل / Complete Manual Installation

إذا لم تعمل جميع السكريبتات، يمكنك التثبيت يدوياً:

### Windows

```cmd
REM 1. إنشاء البيئة الافتراضية
python -m venv venv

REM 2. تفعيل البيئة الافتراضية
venv\Scripts\activate.bat

REM 3. تحديث pip
python -m pip install --upgrade pip

REM 4. تثبيت المكتبات
pip install -r requirements.txt

REM 5. إنشاء المجلدات
mkdir app\static\uploads
mkdir app\static\reports
mkdir data

REM 6. تشغيل البرنامج
python main.py
```

### macOS/Linux

```bash
# 1. إنشاء البيئة الافتراضية
python3 -m venv venv

# 2. تفعيل البيئة الافتراضية
source venv/bin/activate

# 3. تحديث pip
pip install --upgrade pip

# 4. تثبيت المكتبات
pip install -r requirements.txt

# 5. إنشاء المجلدات
mkdir -p app/static/uploads
mkdir -p app/static/reports
mkdir -p data

# 6. تشغيل البرنامج
python3 main.py
```

---

## 🌐 كيف أفتح البرنامج بعد التشغيل؟

بعد تشغيل البرنامج بنجاح، ستظهر رسالة:
```
* Running on http://127.0.0.1:5000
```

**افتح متصفح الإنترنت** (Chrome, Firefox, Safari, Edge) وانتقل إلى أحد هذه العناوين:
- `http://localhost:5000`
- `http://127.0.0.1:5000`

---

## 📞 الحصول على مساعدة إضافية / Getting Additional Help

إذا واجهت مشاكل لم يتم ذكرها هنا:

1. **افتح issue** على GitHub مع:
   - نظام التشغيل (Windows/Mac/Linux)
   - إصدار Python (`python --version`)
   - رسالة الخطأ الكاملة
   - الخطوات التي اتبعتها

2. **قم بتضمين معلومات النظام:**
   ```bash
   # Windows
   python --version
   pip --version
   
   # macOS/Linux
   python3 --version
   pip3 --version
   ```

---

## ✅ التحقق من نجاح التثبيت / Verify Successful Installation

بعد تشغيل البرنامج، يجب أن ترى:

```
=========================================
Starting AWA Monthly Reports Application
=========================================

The application is now running at:

    👉 http://localhost:5000

Open your web browser and navigate to the URL above.

Press Ctrl+C to stop the application

 * Serving Flask app 'main'
 * Debug mode: on
 * Running on http://127.0.0.1:5000
```

عندما تفتح `http://localhost:5000` في المتصفح، يجب أن تشاهد الصفحة الرئيسية لنظام AWA Monthly Reports.

---

**تم إنشاء هذا الدليل لمساعدتك في حل مشاكل التثبيت والتشغيل.**
