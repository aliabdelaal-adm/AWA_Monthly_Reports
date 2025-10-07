# 📱 دليل التثبيت السريع لأندرويد

## مرحباً! هل تريد تثبيت البرنامج على أندرويد؟ اتبع هذه الخطوات البسيطة

---

## 🆘 **جديد! الطريقة الأسهل** - إذا كنت تواجه مشاكل

### إذا جربت كثيراً ولا يعمل معك - جرب السكريبت الجديد! ✨

بعد ما تحمل البرنامج (الخطوات 1-3 أدناه)، استخدم هذا الأمر السحري:

```bash
cd ~/AWA_Monthly_Reports
chmod +x android-setup.sh
./android-setup.sh
```

**هذا كل شيء!** 🎉 السكريبت الجديد:
- ✅ يفحص كل شيء تلقائياً
- ✅ يثبت المتطلبات
- ✅ يصلح المشاكل الشائعة
- ✅ يشغل البرنامج

**أو إذا تريد تشخيص المشاكل:**

```bash
cd ~/AWA_Monthly_Reports
chmod +x android-doctor.sh
./android-doctor.sh
```

💡 **للمزيد من المساعدة:** [ANDROID_HELP_AR.md](ANDROID_HELP_AR.md)

---

## 🎯 خطوات بسيطة جداً (4 خطوات فقط!)

### الخطوة 1️⃣: تثبيت تطبيق Termux

**⚠️ مهم جداً:** لا تحمل Termux من Google Play Store! 

**✅ حمّل من هنا فقط:**
1. افتح هذا الرابط على هاتفك: https://f-droid.org/
2. حمّل تطبيق **F-Droid** (متجر تطبيقات مفتوح المصدر)
3. بعد تثبيت F-Droid، افتحه وابحث عن **"Termux"**
4. اضغط على "Install" لتثبيت Termux

---

### الخطوة 2️⃣: افتح Termux وانسخ هذه الأوامر

افتح تطبيق Termux، ثم انسخ والصق كل سطر من الأسطر التالية واضغط Enter:

```bash
pkg update -y && pkg upgrade -y
```
⏳ انتظر حتى ينتهي... (قد يستغرق 1-2 دقيقة)

```bash
pkg install python git clang libjpeg-turbo libpng freetype -y
```
⏳ انتظر حتى ينتهي... (قد يستغرق 2-5 دقائق)

```bash
termux-setup-storage
```
📱 **هام:** سيطلب منك إذن الوصول للتخزين - اضغط **"السماح"** أو **"Allow"**

---

### الخطوة 3️⃣: تحميل البرنامج

الآن انسخ هذه الأوامر:

```bash
cd ~
git clone https://github.com/aliabdelaal-adm/AWA_Monthly_Reports.git
cd AWA_Monthly_Reports
```

---

### الخطوة 4️⃣: تشغيل البرنامج تلقائياً! ⭐

**هذه الخطوة السحرية!** انسخ أحد هذه الخيارات:

**الخيار 1 (الأفضل - جديد!):** السكريبت المحسّن
```bash
chmod +x android-setup.sh
./android-setup.sh
```

**الخيار 2 (التقليدي):** السكريبت الأصلي
```bash
chmod +x start-android.sh
./start-android.sh
```

✨ **هذا كل شيء!** السكريبت سيقوم بكل شيء تلقائياً:
- ✅ سيثبت كل المكتبات المطلوبة
- ✅ سيجهز البيئة
- ✅ سيشغل البرنامج

⏳ **انتظر 5-15 دقيقة** في المرة الأولى (يعتمد على سرعة الإنترنت)

---

## 🎉 افتح البرنامج في المتصفح!

بعد ما ينتهي التثبيت، افتح متصفح Chrome أو Firefox على هاتفك واكتب:

```
http://localhost:5000
```

🎊 **مبروك! البرنامج يشتغل الآن!**

---

## 🔄 كيف أشغل البرنامج مرة ثانية؟

سهل جداً! افتح Termux واكتب:

```bash
cd ~/AWA_Monthly_Reports
./start-android.sh
```

وخلاص! 😊

---

## 💡 نصائح مهمة

### 🔋 البطارية
- البرنامج يستهلك بطارية، شحن جهازك قبل ما تستخدمه
- أو وصل الشاحن أثناء الاستخدام

### 📶 الإنترنت
- استخدم WiFi للتثبيت (عشان ما يستهلك باقة البيانات)

### 📱 مواصفات الجهاز
- يفضل جهاز فيه 4GB رام أو أكثر
- لكن ممكن يشتغل على أجهزة أقل (بس ممكن يكون أبطأ شوية)

### ⏹️ كيف أوقف البرنامج؟
- اضغط زر **Volume Down + C** في نفس الوقت
- أو اضغط **Ctrl + C** (إذا عندك كيبورد خارجي)

---

## ❓ مشاكل شائعة وحلولها

### 🔧 **أداة التشخيص التلقائي - جرّبها أولاً!**

قبل أي شيء، شغّل أداة التشخيص:
```bash
cd ~/AWA_Monthly_Reports
./android-doctor.sh
```

الأداة ستخبرك بالضبط ما هي المشكلة وكيف تحلها! 🎯

### 🚫 المشكلة: "Python is not installed"
**الحل:** ارجع للخطوة 2 وتأكد إنك كتبت الأمر الصحيح:
```bash
pkg install python git clang libjpeg-turbo libpng freetype -y
```

### 🚫 المشكلة: "Permission denied"
**الحل:** تأكد إنك كتبت هذا الأمر:
```bash
chmod +x start-android.sh
```

### 🚫 المشكلة: ما أقدر أفتح localhost:5000
**الحل:** جرب هذا الرابط بدلاً منه:
```
http://127.0.0.1:5000
```

### 🚫 المشكلة: Termux يتوقف لما أقفل الشاشة
**الحل:** 
1. افتح إعدادات الأندرويد
2. اذهب إلى Battery أو البطارية
3. ابحث عن Termux
4. أوقف تحسين البطارية Battery Optimization له

---

## 📞 تحتاج مساعدة أكثر؟

- راجع الدليل الكامل: [INSTALLATION.md](INSTALLATION.md)
- دليل حل المشاكل: [TROUBLESHOOTING_AR.md](TROUBLESHOOTING_AR.md)
- أو افتح Issue على GitHub

---

## 📝 ملخص سريع - كل الأوامر مع بعض

إذا تريد تنسخ كل الأوامر مرة وحدة، هذا هو:

```bash
# تحديث وتثبيت المتطلبات
pkg update -y && pkg upgrade -y
pkg install python git clang libjpeg-turbo libpng freetype -y
termux-setup-storage

# تحميل البرنامج
cd ~
git clone https://github.com/aliabdelaal-adm/AWA_Monthly_Reports.git
cd AWA_Monthly_Reports

# تشغيل البرنامج
chmod +x start-android.sh
./start-android.sh
```

المتصفح سيفتح تلقائياً على: **http://localhost:5000**

---

<div align="center">

**🎉 بالتوفيق!**

**نتمنى لك تجربة ممتعة مع تطبيق AWA Monthly Reports**

</div>
