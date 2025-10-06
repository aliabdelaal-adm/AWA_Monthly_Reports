# 🚀 دليل البدء السريع / Quick Start Guide

**للمستخدمين الذين لا يعرفون كيفية التثبيت**

**For Users Who Don't Know How to Install**

---

## 📌 قبل أن تبدأ / Before You Start

**ما هو هذا المشروع؟ / What is this project?**

هذا هو نظام **AWA Monthly Reports** - تطبيق ويب لإنشاء التقارير الشهرية. جميع ملفات المشروع موجودة على GitHub ويجب تحميلها أولاً.

This is the **AWA Monthly Reports** system - a web application for creating monthly reports. All project files are hosted on GitHub and must be downloaded first.

**من أين أحمّل المشروع؟ / Where do I download the project?**
```
🔗 https://github.com/aliabdelaal-adm/AWA_Monthly_Reports
```

**ماذا أحتاج؟ / What do I need?**
- ✅ اتصال بالإنترنت / Internet connection
- ✅ Python 3.8 أو أحدث (سيتم التحقق تلقائياً) / Python 3.8+ (will be checked automatically)
- ✅ 5-10 دقائق من وقتك / 5-10 minutes of your time

---

## ⚡ التثبيت الآلي في 3 خطوات / Automated Installation in 3 Steps

### Windows (ويندوز)

#### الطريقة 1: النقر المزدوج (الأسهل)

**📥 الخطوة 1: تحميل المشروع من GitHub**
- اذهب إلى: https://github.com/aliabdelaal-adm/AWA_Monthly_Reports
- انقر على الزر الأخضر "Code"
- اختر "Download ZIP"
- سيتم تحميل ملف `AWA_Monthly_Reports-main.zip`

**📦 الخطوة 2: فك الضغط**
- اذهب إلى مجلد التحميلات
- انقر بزر الماوس الأيمن على `AWA_Monthly_Reports-main.zip`
- اختر "Extract All..." أو "فك الضغط إلى..."
- سيتم إنشاء مجلد `AWA_Monthly_Reports-main`

**🚀 الخطوة 3: التثبيت الآلي**
1. 📁 افتح مجلد `AWA_Monthly_Reports-main`
2. 🖱️ انقر مرتين على ملف `install.bat`
3. ⏳ انتظر (سيتم التثبيت تلقائياً - قد يستغرق 2-5 دقائق)
4. 🎉 سيفتح التطبيق تلقائياً في المتصفح على http://localhost:5000

#### الطريقة 2: سطر الأوامر

بعد تحميل وفك ضغط المشروع من GitHub (انظر الخطوة 1 و 2 أعلاه):

```cmd
# 1. افتح Command Prompt
# 2. انتقل إلى مجلد المشروع المفكوك
cd C:\path\to\AWA_Monthly_Reports-main

# 3. نفّذ سكريبت التثبيت:
install.bat
```

💡 **ملاحظة:** استبدل `C:\path\to\` بالمسار الفعلي حيث فككت ضغط المشروع

---

### macOS/Linux (ماك/لينكس)

**📥 الخطوة 1: تحميل المشروع من GitHub**
- اذهب إلى: https://github.com/aliabdelaal-adm/AWA_Monthly_Reports
- انقر على الزر الأخضر "Code"
- اختر "Download ZIP"
- سيتم تحميل ملف `AWA_Monthly_Reports-main.zip`

**📦 الخطوة 2: فك الضغط**
```bash
cd ~/Downloads
unzip AWA_Monthly_Reports-main.zip
cd AWA_Monthly_Reports-main
```

**🚀 الخطوة 3: التثبيت الآلي**
```bash
# امنح صلاحيات التنفيذ
chmod +x install.sh

# نفّذ سكريبت التثبيت
./install.sh
```

⏳ انتظر (سيتم التثبيت تلقائياً - قد يستغرق 2-5 دقائق)
🎉 سيفتح التطبيق تلقائياً في المتصفح على http://localhost:5000

---

## 🎯 ماذا سيحدث؟ / What Will Happen?

السكريبت سيقوم بكل شيء تلقائياً:

1. ✅ التحقق من Python (هل مثبت؟)
2. ✅ إنشاء بيئة افتراضية
3. ✅ تثبيت جميع المكتبات
4. ✅ إعداد المجلدات
5. ✅ تشغيل التطبيق
6. 🎉 فتح المتصفح على http://localhost:5000

---

## ❓ إذا واجهت مشكلة / If You Face Issues

### المشكلة: "Python is not installed"
**الحل:**
1. حمّل Python من: https://www.python.org/downloads/
2. ثبّت Python (اختر "Add Python to PATH")
3. أعد تشغيل الكمبيوتر
4. نفّذ السكريبت مرة أخرى

### المشكلة: "Permission denied" (Linux/Mac)
**الحل:**
```bash
chmod +x install.sh
./install.sh
```

### المشكلة: لا يفتح المتصفح تلقائياً
**الحل:**
افتح المتصفح يدوياً واذهب إلى: http://localhost:5000

---

## 🔄 تشغيل التطبيق مرة أخرى / Running the Application Again

بعد التثبيت الأول، لتشغيل التطبيق مرة أخرى:

### Windows
```cmd
run.bat
```

### macOS/Linux
```bash
./run.sh
```

---

## 📚 المزيد من المعلومات / More Information

- 📖 [دليل التثبيت الكامل / Full Installation Guide](INSTALLATION.md)
- 📘 [دليل المستخدم / User Guide](USER_GUIDE.md)
- 📙 [README الكامل / Full README](README.md)

---

## 💡 نصائح / Tips

1. **تأكد من اتصالك بالإنترنت** أثناء التثبيت (لتحميل المكتبات)
2. **لا تغلق النافذة** أثناء التثبيت
3. **الصبر** - التثبيت قد يستغرق بضع دقائق
4. **افتح المتصفح** على http://localhost:5000 بعد انتهاء التثبيت

---

<div align="center">

**🎊 مبروك! التطبيق جاهز للاستخدام!**

**🎊 Congratulations! The application is ready to use!**

</div>
