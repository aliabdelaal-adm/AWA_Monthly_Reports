# 🆘 مساعدة سريعة - ما أقدر أشغل البرنامج!

## 🎯 إذا كنت تحاول كثيراً ولا يعمل البرنامج - اتبع هذا الدليل!

---

## ✨ الحل الأسرع - جربه الآن!

افتح تطبيق **Termux** وانسخ هذه الأوامر **بالترتيب**:

### الخطوة 1: اذهب للمجلد الصحيح
```bash
cd ~/AWA_Monthly_Reports
```

### الخطوة 2: شغل السكريبت الجديد
```bash
chmod +x android-setup.sh
./android-setup.sh
```

**هذا كل شيء!** السكريبت سيفحص كل شيء ويصلح المشاكل تلقائياً! ✨

⏳ **انتظر 5-15 دقيقة** إذا كانت المرة الأولى

---

## 🔍 لا يزال لا يعمل؟ جرب هذا!

### فحص المشاكل تلقائياً

شغل أداة التشخيص:

```bash
cd ~/AWA_Monthly_Reports
chmod +x android-doctor.sh
./android-doctor.sh
```

الأداة ستفحص نظامك وتخبرك بالضبط ما هي المشكلة! 🎯

---

## 🚑 حلول سريعة للمشاكل الشائعة

### ❌ المشكلة: "Python is not installed"

**الحل:**
```bash
pkg install python -y
```

ثم حاول مرة أخرى!

---

### ❌ المشكلة: "Permission denied"

**الحل:**
```bash
cd ~/AWA_Monthly_Reports
chmod +x *.sh
./android-setup.sh
```

---

### ❌ المشكلة: ما أقدر أفتح localhost:5000

**3 حلول جربها:**

**الحل 1:** جرب رابط مختلف
- افتح Chrome أو Firefox
- جرب كل واحد من هذه الروابط:
  ```
  http://localhost:5000
  http://127.0.0.1:5000
  http://0.0.0.0:5000
  ```

**الحل 2:** تأكد أن البرنامج يعمل
- ارجع لـ Termux
- تأكد أنك تشوف هذه الرسالة:
  ```
  * Running on http://127.0.0.1:5000
  ```
- إذا ما تشوفها، البرنامج متوقف

**الحل 3:** أعد تشغيل البرنامج
```bash
cd ~/AWA_Monthly_Reports
./android-setup.sh
```

---

### ❌ المشكلة: Termux يتوقف لما أقفل الشاشة

**الحل:**

1. افتح **إعدادات** Android
2. اذهب إلى **Battery** (البطارية)
3. اضغط على الثلاث نقاط ⋮ (القائمة)
4. اختر **Battery optimization** (تحسين البطارية)
5. اختر **All apps** (جميع التطبيقات)
6. ابحث عن **Termux**
7. اختر **Don't optimize** (عدم التحسين)

✅ الآن Termux ما راح يتوقف!

---

### ❌ المشكلة: "ERROR: Failed building wheel"

**الحل:**
```bash
pkg install build-essential clang libjpeg-turbo libpng freetype -y
cd ~/AWA_Monthly_Reports
rm -rf venv
./android-setup.sh
```

---

### ❌ المشكلة: البرنامج بطيء جداً

**الحلول:**

1. **أغلق التطبيقات الأخرى:**
   - اضغط زر المهام المتعددة
   - أغلق كل التطبيقات المفتوحة
   - ارجع لـ Termux

2. **تأكد من الشحن:**
   - وصّل الشاحن
   - أو تأكد أن البطارية أكثر من 50%

3. **استخدم WiFi:**
   - تأكد أنك متصل بـ WiFi
   - وليس البيانات الخلوية

4. **أعد تشغيل الجهاز:**
   ```bash
   # قبل ما تطفي الجهاز، أوقف البرنامج:
   # في Termux: Volume Down + C
   ```
   - أطفي وشغّل الجهاز
   - افتح Termux
   - شغّل البرنامج مرة أخرى

---

### ❌ المشكلة: "No module named 'flask'"

**الحل:**
```bash
cd ~/AWA_Monthly_Reports
source venv/bin/activate
pip install -r requirements.txt
```

إذا لسه ما اشتغل:
```bash
rm -rf venv
./android-setup.sh
```

---

## 📱 نصائح مهمة للنجاح

### ✅ قبل ما تبدأ:

1. **شحن البطارية** - على الأقل 50%
2. **WiFi متصل** - مو بيانات خلوية
3. **مساحة تخزين** - 1GB فاضية على الأقل
4. **ذاكرة RAM** - 2GB أو أكثر (يفضل 4GB)

### ✅ أثناء التثبيت:

1. **لا تقفل Termux** - خليه مفتوح
2. **لا تقفل الشاشة** - أو شغّل "Stay awake"
3. **خليك على WiFi** - لا تفصله
4. **انتظر بصبر** - قد يستغرق 15 دقيقة

### ✅ أثناء استخدام البرنامج:

1. **خلّي Termux مفتوح** - في الخلفية
2. **لا تطفي الشاشة** - كثير
3. **استخدم Chrome أو Firefox** - للمتصفح
4. **احفظ شغلك دايماً** - قبل ما تطفي

---

## 🎓 شرح خطوة بخطوة - للمبتدئين

### 🆕 التثبيت من الصفر

إذا ما ثبّت البرنامج أصلاً:

#### 1. ثبّت Termux (إذا ما عندك)

⚠️ **مهم:** لا تحمل من Google Play Store!

✅ **حمّل من F-Droid:**
1. افتح: https://f-droid.org/
2. حمّل تطبيق F-Droid
3. افتح F-Droid
4. ابحث عن "Termux"
5. اضغط Install

#### 2. حدّث Termux وثبّت الأساسيات

افتح Termux وانسخ:
```bash
pkg update -y && pkg upgrade -y
pkg install python git clang libjpeg-turbo libpng freetype -y
termux-setup-storage
```

⏳ انتظر حتى ينتهي (5-10 دقائق)

#### 3. حمّل البرنامج

```bash
cd ~
git clone https://github.com/aliabdelaal-adm/AWA_Monthly_Reports.git
cd AWA_Monthly_Reports
```

#### 4. شغّل البرنامج

```bash
chmod +x android-setup.sh
./android-setup.sh
```

⏳ انتظر حتى ينتهي (10-15 دقيقة)

#### 5. افتح المتصفح

لما ينتهي، افتح **Chrome** أو **Firefox** واكتب:
```
http://localhost:5000
```

🎉 **مبروك!** البرنامج يشتغل الآن!

---

## 🔄 كيف أشغله مرة ثانية؟

المرة الثانية أسهل بكثير! (30 ثانية فقط)

```bash
cd ~/AWA_Monthly_Reports
./android-setup.sh
```

أو إذا تبي الطريقة الطويلة:
```bash
cd ~/AWA_Monthly_Reports
source venv/bin/activate
python main.py
```

ثم افتح: http://localhost:5000

---

## ⏹️ كيف أوقف البرنامج؟

في Termux، اضغط:
- **Volume Down + C** (في نفس الوقت)
- أو **Ctrl + C** (إذا عندك كيبورد)

---

## 🆘 لسه ما اشتغل؟ اتصل بنا!

إذا جربت كل شيء ولسه ما اشتغل:

### خيار 1: افتح Issue على GitHub

1. اذهب إلى: https://github.com/aliabdelaal-adm/AWA_Monthly_Reports/issues
2. اضغط "New Issue"
3. اكتب:
   - نوع جهازك (مثلاً: Samsung Galaxy S21)
   - إصدار Android (مثلاً: Android 13)
   - المشكلة بالضبط
   - صورة للخطأ (screenshot)

### خيار 2: شغّل التشخيص وأرسل النتيجة

```bash
cd ~/AWA_Monthly_Reports
./android-doctor.sh > diagnostic.txt
cat diagnostic.txt
```

انسخ النتيجة وأرسلها في Issue

---

## 📚 مراجع إضافية

- 📱 **الدليل الشامل:** [ANDROID_README.md](ANDROID_README.md) - كل شيء في مكان واحد!
- 📖 **الدليل الكامل:** [INSTALLATION.md](INSTALLATION.md)
- 🔧 **حل المشاكل:** [TROUBLESHOOTING_AR.md](TROUBLESHOOTING_AR.md)
- 🚀 **البداية السريعة:** [ANDROID_QUICKSTART_AR.md](ANDROID_QUICKSTART_AR.md)

---

## 💪 نصيحة أخيرة

**لا تيأس!** 🌟

التثبيت على Android صعب شوية أول مرة، بس بعدها سهل جداً!

معظم المشاكل تنحل بـ:
1. إعادة تشغيل Termux
2. تشغيل `./android-setup.sh` من جديد
3. إيقاف تحسين البطارية لـ Termux

**جرب مرة ثانية - بتنجح! 💪**

---

<div align="center">

## 🎉 بالتوفيق!

**نحن هنا لمساعدتك!**

</div>
