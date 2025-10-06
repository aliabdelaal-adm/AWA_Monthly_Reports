# 🚀 دليل البدء السريع / Quick Start Guide

**للمستخدمين الذين لا يعرفون كيفية التثبيت**

**For Users Who Don't Know How to Install**

---

## ⚡ التثبيت الآلي في 3 خطوات / Automated Installation in 3 Steps

### Windows (ويندوز)

#### الطريقة 1: النقر المزدوج (الأسهل)
1. 📥 حمّل المشروع وفك ضغطه
2. 📁 افتح المجلد
3. 🖱️ انقر مرتين على `install.bat`
4. ⏳ انتظر (سيتم التثبيت تلقائياً)
5. 🎉 سيفتح التطبيق تلقائياً في المتصفح!

#### الطريقة 2: سطر الأوامر
```cmd
# 1. افتح Command Prompt في مجلد المشروع
# 2. نفّذ:
install.bat
```

---

### macOS/Linux (ماك/لينكس)

```bash
# 1. افتح Terminal في مجلد المشروع
# 2. نفّذ:
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
