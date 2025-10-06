# دليل التثبيت / Installation Guide

دليل شامل لتثبيت وإعداد نظام التقارير الشهرية لإدارة الرفق بالحيوان

Comprehensive guide to install and setup the AWA Monthly Reports System

## المتطلبات / Requirements

### متطلبات النظام / System Requirements

- **نظام التشغيل / Operating System**: Windows 10/11, macOS 10.14+, Linux (Ubuntu 18.04+)
- **Python**: 3.8 أو أحدث / 3.8 or higher
- **الذاكرة / RAM**: 4GB كحد أدنى، 8GB موصى به / 4GB minimum, 8GB recommended
- **المساحة / Storage**: 500MB مساحة حرة / 500MB free space
- **المتصفح / Browser**: Chrome, Firefox, Safari, Edge (أحدث الإصدارات / latest versions)

### البرامج المطلوبة / Required Software

1. **Python 3.8+**
   - تحميل من / Download from: https://www.python.org/downloads/
   - تأكد من تحديد "Add Python to PATH" أثناء التثبيت

2. **pip** (يأتي مع Python / comes with Python)

3. **Git** (اختياري للمطورين / optional for developers)
   - تحميل من / Download from: https://git-scm.com/downloads

## التثبيت / Installation

### الطريقة 1: استخدام Git (للمطورين) / Using Git (For Developers)

#### 1. استنساخ المستودع / Clone the Repository

```bash
git clone https://github.com/aliabdelaal-adm/AWA_Monthly_Reports.git
cd AWA_Monthly_Reports
```

### الطريقة 2: تحميل ZIP / Download ZIP

#### 1. تحميل المشروع / Download the Project

- اذهب إلى / Go to: https://github.com/aliabdelaal-adm/AWA_Monthly_Reports
- انقر على "Code" ثم "Download ZIP"
- فك ضغط الملف / Extract the ZIP file
- افتح مجلد المشروع / Open the project folder

## الإعداد / Setup

### Windows

#### 1. افتح Command Prompt أو PowerShell

```bash
cd path\to\AWA_Monthly_Reports
```

#### 2. إنشاء بيئة افتراضية / Create Virtual Environment

```bash
python -m venv venv
```

#### 3. تفعيل البيئة الافتراضية / Activate Virtual Environment

```bash
# Command Prompt
venv\Scripts\activate

# PowerShell
venv\Scripts\Activate.ps1
```

#### 4. تثبيت المتطلبات / Install Requirements

```bash
pip install -r requirements.txt
```

#### 5. تشغيل التطبيق / Run the Application

```bash
# الطريقة السريعة / Quick way
run.bat

# أو / or
python app.py
```

### macOS/Linux

#### 1. افتح Terminal

```bash
cd path/to/AWA_Monthly_Reports
```

#### 2. إنشاء بيئة افتراضية / Create Virtual Environment

```bash
python3 -m venv venv
```

#### 3. تفعيل البيئة الافتراضية / Activate Virtual Environment

```bash
source venv/bin/activate
```

#### 4. تثبيت المتطلبات / Install Requirements

```bash
pip install -r requirements.txt
```

#### 5. تشغيل التطبيق / Run the Application

```bash
# الطريقة السريعة / Quick way
./run.sh

# أو / or
python3 app.py
```

## التحقق من التثبيت / Verify Installation

### 1. افتح المتصفح / Open Browser

انتقل إلى / Navigate to: http://localhost:5000

### 2. يجب أن ترى / You should see:

- الصفحة الرئيسية لنظام التقارير الشهرية
- واجهة ثنائية اللغة (عربي/إنجليزي)
- قوائم التنقل والأزرار

### 3. اختبار الميزات / Test Features

1. انقر على "رفع الملفات / Upload"
2. اختر الشهر والسنة
3. ارفع ملف اختباري
4. تأكد من عمل جميع الميزات

## حل المشاكل الشائعة / Troubleshooting

### المشكلة: Python غير معرّف / Python not recognized

**الحل / Solution:**
- تأكد من تثبيت Python
- أضف Python إلى PATH
- أعد تشغيل Command Prompt/Terminal

### المشكلة: pip غير معرّف / pip not recognized

**الحل / Solution:**
```bash
python -m pip install --upgrade pip
```

### المشكلة: خطأ في تثبيت المتطلبات / Error installing requirements

**الحل / Solution:**
```bash
# ترقية pip أولاً / Upgrade pip first
pip install --upgrade pip

# ثم حاول مرة أخرى / Then try again
pip install -r requirements.txt
```

### المشكلة: Port 5000 مستخدم / Port 5000 in use

**الحل / Solution:**

عدّل ملف `app.py` وغيّر رقم المنفذ / Edit `app.py` and change the port:

```python
if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=8000)  # استخدم 8000 بدلاً من 5000
```

### المشكلة: خطأ في رفع الملفات / File upload error

**الحل / Solution:**
- تأكد من وجود مجلدات uploads و reports
- تحقق من صلاحيات المجلدات
- تأكد من حجم الملف أقل من 50MB

## التكوين المتقدم / Advanced Configuration

### تخصيص الإعدادات / Customize Settings

عدّل ملف `config/config.py` / Edit `config/config.py`:

```python
# تغيير حجم الملف الأقصى / Change max file size
MAX_CONTENT_LENGTH = 100 * 1024 * 1024  # 100MB

# تغيير الامتدادات المسموحة / Change allowed extensions
ALLOWED_EXTENSIONS = {'docx', 'pptx', 'png', 'jpg', 'pdf', 'xlsx'}
```

### تشغيل في وضع الإنتاج / Production Mode

```python
# في app.py / In app.py
app.run(debug=False, host='0.0.0.0', port=80)
```

## النشر / Deployment

### النشر على خادم محلي / Deploy on Local Server

1. استخدم Gunicorn (Linux/macOS):
```bash
pip install gunicorn
gunicorn -w 4 -b 0.0.0.0:5000 app:app
```

2. استخدم Waitress (Windows):
```bash
pip install waitress
waitress-serve --host=0.0.0.0 --port=5000 app:app
```

### النشر على السحابة / Deploy to Cloud

- **Heroku**: راجع دليل Heroku الرسمي
- **AWS**: استخدم EC2 أو Elastic Beanstalk
- **Azure**: استخدم Azure App Service
- **Google Cloud**: استخدم App Engine

## التحديثات / Updates

### تحديث المشروع / Update Project

```bash
# إذا كنت تستخدم Git / If using Git
git pull origin main

# تحديث المتطلبات / Update requirements
pip install -r requirements.txt --upgrade
```

## الدعم / Support

إذا واجهت أي مشاكل / If you encounter any issues:

1. راجع قسم حل المشاكل أعلاه
2. افتح Issue على GitHub
3. راجع ملف CONTRIBUTING.md للمزيد من المساعدة

## الموارد الإضافية / Additional Resources

- [Python Documentation](https://docs.python.org/3/)
- [Flask Documentation](https://flask.palletsprojects.com/)
- [GitHub Repository](https://github.com/aliabdelaal-adm/AWA_Monthly_Reports)

---

<div dir="rtl">

## ملاحظات هامة

- تأكد من تحديث Python وpip قبل التثبيت
- استخدم البيئة الافتراضية دائماً لتجنب تعارض المكتبات
- احتفظ بنسخة احتياطية من البيانات المهمة

</div>

## Important Notes

- Always update Python and pip before installation
- Always use virtual environment to avoid library conflicts
- Keep backups of important data

---

**نتمنى لك تجربة ممتعة مع نظام التقارير الشهرية!**

**We wish you a great experience with the Monthly Reports System!**
