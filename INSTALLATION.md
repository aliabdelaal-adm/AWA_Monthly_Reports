# دليل التثبيت / Installation Guide

دليل شامل لتثبيت وإعداد نظام التقارير الشهرية لإدارة الرفق بالحيوان

Comprehensive guide to install and setup the AWA Monthly Reports System

---

## 🎯 التثبيت السريع والآلي / Quick Automated Installation

**الطريقة الأسهل والأسرع - موصى بها للجميع!**

**The easiest and fastest way - recommended for everyone!**

### 📌 ما هو "المشروع"؟ / What is "the Project"?

"المشروع" هو نظام **AWA Monthly Reports** - تطبيق ويب كامل موجود على GitHub. عند تحميل المشروع، ستحصل على جميع الملفات والبرامج النصية اللازمة لتشغيل النظام على جهازك.

"The Project" is the **AWA Monthly Reports** system - a complete web application hosted on GitHub. When you download the project, you get all the files and scripts needed to run the system on your computer.

**موقع المشروع / Project Location:**
```
https://github.com/aliabdelaal-adm/AWA_Monthly_Reports
```

**ما الذي ستحصل عليه؟ / What will you get?**
- ✅ ملفات التطبيق الكاملة / Complete application files
- ✅ سكريبتات التثبيت الآلي / Automated installation scripts
- ✅ جميع التبعيات والمكتبات المطلوبة / All required dependencies
- ✅ الوثائق والشروحات / Documentation and guides

### للمستخدمين الذين لا يعرفون كيفية التثبيت / For Users Who Don't Know How to Install

لا تقلق! لقد أعددنا لك سكريبتات تثبيت آلية تقوم بكل شيء نيابة عنك.

Don't worry! We've prepared automated installation scripts that do everything for you.

### 📝 ملاحظة مهمة حول "تحميل المشروع" / Important Note About "Downloading the Project"

**عندما نقول "حمّل المشروع"، نعني:**

1. اذهب إلى موقع GitHub الخاص بالمشروع
2. حمّل جميع الملفات من هناك كملف ZIP واحد
3. فك ضغط الملف على جهازك

**When we say "download the project", we mean:**

1. Go to the project's GitHub website
2. Download all files from there as a single ZIP file
3. Extract the ZIP file on your computer

**لماذا GitHub؟** لأن جميع ملفات المشروع محفوظة هناك. GitHub هو موقع لاستضافة البرمجيات مجاناً.

**Why GitHub?** Because all project files are stored there. GitHub is a free software hosting website.

#### Windows (ويندوز)

**الخطوة 1: تحميل المشروع من GitHub / Step 1: Download Project from GitHub**

1. اذهب إلى صفحة المشروع / Go to the project page:
   ```
   https://github.com/aliabdelaal-adm/AWA_Monthly_Reports
   ```

2. انقر على الزر الأخضر "Code" / Click the green "Code" button

3. اختر "Download ZIP" من القائمة / Select "Download ZIP" from the menu

4. احفظ ملف `AWA_Monthly_Reports-main.zip` على جهازك / Save `AWA_Monthly_Reports-main.zip` to your computer

**الخطوة 2: فك ضغط الملف / Step 2: Extract the ZIP file**

5. اذهب إلى مجلد التحميلات / Go to your Downloads folder

6. انقر بزر الماوس الأيمن على `AWA_Monthly_Reports-main.zip` / Right-click on `AWA_Monthly_Reports-main.zip`

7. اختر "Extract All..." أو "فك الضغط إلى..." / Select "Extract All..." or "فك الضغط إلى..."

8. سيتم إنشاء مجلد باسم `AWA_Monthly_Reports-main` / A folder named `AWA_Monthly_Reports-main` will be created

**الخطوة 3: تشغيل التثبيت الآلي / Step 3: Run Automated Installation**

9. افتح مجلد `AWA_Monthly_Reports-main` / Open the `AWA_Monthly_Reports-main` folder

10. ابحث عن ملف `install.bat` / Find the file `install.bat`

11. انقر مرتين على `install.bat` / Double-click `install.bat`

12. انتظر حتى ينتهي التثبيت (قد يستغرق عدة دقائق) / Wait for installation to complete (may take several minutes)

13. سيفتح التطبيق تلقائياً في المتصفح! / Application will start automatically in your browser!

أو عبر سطر الأوامر / Or via Command Line:
```bash
install.bat
```

#### macOS/Linux (ماك/لينكس)

**الخطوة 1: تحميل المشروع من GitHub / Step 1: Download Project from GitHub**

1. اذهب إلى صفحة المشروع / Go to the project page:
   ```
   https://github.com/aliabdelaal-adm/AWA_Monthly_Reports
   ```

2. انقر على الزر الأخضر "Code" / Click the green "Code" button

3. اختر "Download ZIP" من القائمة / Select "Download ZIP" from the menu

4. احفظ ملف `AWA_Monthly_Reports-main.zip` على جهازك / Save `AWA_Monthly_Reports-main.zip` to your computer

**الخطوة 2: فك ضغط الملف / Step 2: Extract the ZIP file**

5. افتح Terminal / Open Terminal

6. اذهب إلى مجلد التحميلات / Navigate to Downloads folder:
   ```bash
   cd ~/Downloads
   ```

7. فك ضغط الملف / Extract the file:
   ```bash
   unzip AWA_Monthly_Reports-main.zip
   ```

8. ادخل إلى مجلد المشروع / Enter the project folder:
   ```bash
   cd AWA_Monthly_Reports-main
   ```

**الخطوة 3: تشغيل التثبيت الآلي / Step 3: Run Automated Installation**

9. امنح صلاحيات التنفيذ / Give execution permissions:
   ```bash
   chmod +x install.sh
   ```

10. نفّذ سكريبت التثبيت / Run installation script:
    ```bash
    ./install.sh
    ```

11. انتظر حتى ينتهي التثبيت (قد يستغرق عدة دقائق) / Wait for installation to complete (may take several minutes)

12. سيفتح التطبيق تلقائياً في المتصفح! / Application will start automatically in your browser!

### ماذا تفعل السكريبتات الآلية؟ / What Do the Automated Scripts Do?

السكريبتات تقوم تلقائياً بـ:
- ✅ التحقق من تثبيت Python وإصداره
- ✅ التحقق من تثبيت pip
- ✅ إنشاء بيئة افتراضية (Virtual Environment)
- ✅ تفعيل البيئة الافتراضية
- ✅ تحديث pip لآخر إصدار
- ✅ تثبيت جميع المكتبات المطلوبة من requirements.txt
- ✅ إنشاء المجلدات المطلوبة للتطبيق
- ✅ تشغيل التطبيق

The scripts automatically:
- ✅ Check Python installation and version
- ✅ Check pip installation
- ✅ Create virtual environment
- ✅ Activate virtual environment
- ✅ Update pip to latest version
- ✅ Install all required packages from requirements.txt
- ✅ Create necessary application directories
- ✅ Start the application

### بعد اكتمال التثبيت / After Installation Completes

1. افتح المتصفح / Open your browser
2. انتقل إلى / Navigate to: **http://localhost:5000**
3. ابدأ استخدام التطبيق! / Start using the application!

---

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

هذه الطريقة مناسبة للمستخدمين الذين لا يستخدمون Git / This method is suitable for users who don't use Git

**خطوات التحميل / Download Steps:**

1. اذهب إلى صفحة المشروع على GitHub / Go to the project page on GitHub:
   ```
   https://github.com/aliabdelaal-adm/AWA_Monthly_Reports
   ```

2. ابحث عن الزر الأخضر "Code" في أعلى الصفحة / Look for the green "Code" button at the top of the page

3. انقر على "Code" / Click "Code"

4. اختر "Download ZIP" من القائمة المنسدلة / Select "Download ZIP" from the dropdown menu

5. سيتم تحميل ملف `AWA_Monthly_Reports-main.zip` (حجم حوالي 10-20 MB) / A file `AWA_Monthly_Reports-main.zip` will be downloaded (about 10-20 MB)

**فك الضغط / Extract the Files:**

6. اذهب إلى مجلد التحميلات على جهازك / Go to your Downloads folder

7. انقر بزر الماوس الأيمن على الملف `AWA_Monthly_Reports-main.zip` / Right-click on `AWA_Monthly_Reports-main.zip`

8. اختر "Extract All..." (Windows) أو "فك الضغط" (Windows باللغة العربية) أو استخدم برنامج فك الضغط المفضل لديك / Select "Extract All..." (Windows) or use your preferred extraction software

9. اختر المكان الذي تريد فك الضغط إليه (مثل: سطح المكتب أو مجلد المستندات) / Choose where to extract (e.g., Desktop or Documents folder)

10. سيتم إنشاء مجلد جديد باسم `AWA_Monthly_Reports-main` يحتوي على جميع ملفات المشروع / A new folder `AWA_Monthly_Reports-main` will be created containing all project files

11. افتح مجلد `AWA_Monthly_Reports-main` / Open the `AWA_Monthly_Reports-main` folder

12. تأكد من وجود الملفات التالية / Verify that you see these files:
    - `install.bat` (لنظام Windows)
    - `install.sh` (لنظام macOS/Linux)
    - `requirements.txt`
    - مجلد `app/`
    - وملفات أخرى

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
python main.py
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
