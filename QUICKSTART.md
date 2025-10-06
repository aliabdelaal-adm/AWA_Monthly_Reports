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

## ⚡ البدء السريع في 3 خطوات / Quick Start in 3 Steps

### 🪟 Windows (ويندوز)

#### ✨ الطريقة السهلة (موصى بها) - Using start.bat

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

**🚀 الخطوة 3: التشغيل**
1. 📁 افتح مجلد `AWA_Monthly_Reports-main`
2. 🖱️ انقر مرتين على ملف `start.bat` ⭐ (الطريقة الجديدة!)
3. ⏳ انتظر (سيتم التثبيت والتشغيل تلقائياً - قد يستغرق 2-5 دقائق في المرة الأولى)
4. 🎉 افتح المتصفح وانتقل إلى http://localhost:5000

> 💡 **ميزة start.bat الجديد:** لا يسأل أسئلة، يبدأ مباشرة!

#### الطريقة البديلة - Using install.bat

إذا كنت تفضل استخدام السكريبت القديم:

```cmd
# 1. افتح مجلد المشروع المفكوك
# 2. انقر مرتين على install.bat
# أو استخدم Command Prompt:
cd C:\path\to\AWA_Monthly_Reports-main
install.bat
```

💡 **ملاحظة:** استبدل `C:\path\to\` بالمسار الفعلي حيث فككت ضغط المشروع

---

### 🍎 macOS/Linux (ماك/لينكس)

#### ✨ الطريقة السهلة (موصى بها) - Using start.sh

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

**🚀 الخطوة 3: التشغيل**
```bash
# امنح صلاحيات التنفيذ
chmod +x start.sh

# نفّذ السكريبت الجديد
./start.sh  ⭐
```

⏳ انتظر (سيتم التثبيت والتشغيل تلقائياً - قد يستغرق 2-5 دقائق في المرة الأولى)
🎉 افتح المتصفح وانتقل إلى http://localhost:5000

> 💡 **ميزة start.sh الجديد:** لا يسأل أسئلة، يبدأ مباشرة!

#### الطريقة البديلة - Using install.sh

إذا كنت تفضل استخدام السكريبت القديم:

```bash
chmod +x install.sh
./install.sh
```

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

> 📖 **للحصول على دليل كامل لحل المشاكل:**  
> راجع ملف [TROUBLESHOOTING_AR.md](TROUBLESHOOTING_AR.md) الذي يحتوي على حلول تفصيلية لجميع المشاكل الشائعة.

### المشكلة: "Python is not installed"
**الحل:**
1. حمّل Python من: https://www.python.org/downloads/
2. ثبّت Python (اختر "Add Python to PATH")
3. أعد تشغيل الكمبيوتر
4. نفّذ السكريبت مرة أخرى

### المشكلة: "Permission denied" (Linux/Mac)
**الحل:**
```bash
chmod +x start.sh
./start.sh
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
