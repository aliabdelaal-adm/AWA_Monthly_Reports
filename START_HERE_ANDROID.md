# 🎯 ابدأ هنا! / START HERE! (Android)

<div align="center">

## 📱 مرحباً! هل تريد تشغيل التطبيق على أندرويد؟

### ✨ هذا الدليل لك! ✨

**3 خطوات بسيطة وخلصت!**

</div>

---

## 🚀 الطريقة الأسرع (موصى بها!)

### الخطوة 1️⃣: ثبّت المتطلبات

افتح **Termux** (حمّله من F-Droid إذا ما عندك) واكتب:

```bash
pkg update -y && pkg upgrade -y
pkg install python git clang libjpeg-turbo libpng freetype -y
termux-setup-storage
```

⏳ انتظر 5 دقائق...

---

### الخطوة 2️⃣: حمّل البرنامج

```bash
cd ~
git clone https://github.com/aliabdelaal-adm/AWA_Monthly_Reports.git
cd AWA_Monthly_Reports
```

✅ خلصت التحميل!

---

### الخطوة 3️⃣: شغّل البرنامج

```bash
chmod +x android-setup.sh
./android-setup.sh
```

⏳ انتظر 10-15 دقيقة (أول مرة فقط)...

---

## 🎉 خلاص! شغّال!

افتح **Chrome** أو **Firefox** واكتب:

```
http://localhost:5000
```

**🎊 مبروك! البرنامج يعمل الآن! 🎊**

---

## 🆘 ما اشتغل؟ لا تقلق!

### جرّب هذا:

```bash
cd ~/AWA_Monthly_Reports
./android-doctor.sh
```

الأداة ستخبرك بالضبط ما المشكلة! 🔍

---

## 📱 متطلبات نظام أندرويد / Android System Requirements

### ✅ الإصدار الموصى به / Recommended Version

**Termux يعمل بشكل أفضل على:**
- Android 7.0 (Nougat) أو أحدث
- Android 7.0 (Nougat) or newer

### ⚠️ مشاكل الإصدارات الحديثة جداً / Issues with Very New Android Versions

**إذا عندك أحدث إصدار من أندرويد (Android 12+ أو Android 13+):**

قد تواجه بعض المشاكل بسبب قيود الأمان الجديدة في أندرويد.

**الحلول / Solutions:**

#### الحل 1: استخدم Termux من F-Droid (موصى به!)
```
✅ أحدث إصدار من Termux
✅ متوافق مع Android 12/13/14
✅ تحديثات منتظمة
```

**كيف تحمله:**
1. افتح: https://f-droid.org/
2. حمّل تطبيق F-Droid (APK)
3. افتح F-Droid وابحث عن "Termux"
4. اضغط Install

#### الحل 2: حمّل أحدث APK من GitHub
```
✅ مباشر من المطورين
✅ آخر إصدار مستقر
```

**الرابط:**
https://github.com/termux/termux-app/releases

---

## 🔄 بدائل Termux / Termux Alternatives

**إذا Termux لا يعمل على جهازك، جرب هذه التطبيقات:**

### 1️⃣ **UserLAnd** (الأسهل للمبتدئين)
```
✅ واجهة بسيطة
✅ لا يحتاج root
✅ متوافق مع Android 12+
```
**التحميل:** Google Play Store أو F-Droid

**ملاحظة:** UserLAnd يستخدم Linux كامل، قد يكون أثقل من Termux

---

### 2️⃣ **Termius** (للمحترفين)
```
✅ واجهة احترافية
✅ دعم SSH ممتاز
❌ ليس مجاني بالكامل
```
**التحميل:** Google Play Store

**ملاحظة:** مناسب أكثر للاتصال بخوادم خارجية

---

### 3️⃣ **Linux Deploy** + **JuiceSSH**
```
✅ نظام Linux كامل
✅ متوافق مع معظم إصدارات أندرويد
⚠️ يحتاج بعض الخبرة
```

---

### 💡 أفضل خيار / Best Option

**للمستخدمين العاديين:**
1. حاول Termux من F-Droid أولاً ✅
2. إذا لم يعمل، جرب UserLAnd

**إذا كنت متقدم:**
- جرب تثبيت Linux Deploy مع BusyBox

---

### ⚠️ تنبيه مهم / Important Warning

**لا تحمل Termux من Google Play Store!**

❌ نسخة Play Store **قديمة ومتوقفة منذ 2020**  
❌ لا تعمل على Android 12+  
❌ لن تحصل على تحديثات

✅ **استخدم F-Droid أو GitHub فقط!**

---

## 📚 تبي تعرف أكثر؟

| تبي | اقرأ هنا |
|-----|----------|
| 🆘 مشكلة | [ANDROID_HELP_AR.md](ANDROID_HELP_AR.md) |
| 📖 كل شيء | [ANDROID_README.md](ANDROID_README.md) |
| 🤔 أي ملف | [ANDROID_WHICH_FILE.md](ANDROID_WHICH_FILE.md) |
| ⚡ أوامر | [ANDROID_QUICKREF.md](ANDROID_QUICKREF.md) |

---

## 💡 نصائح مهمة

✅ استخدم **WiFi** (مو بيانات)  
✅ البطارية **50%+**  
✅ تأكد من **1GB** مساحة فارغة  
✅ حمّل Termux من **F-Droid** (مو Play Store!)  
✅ لا تقفل Termux أثناء التثبيت

---

## 🔄 كيف أشغله مرة ثانية؟

سهل جداً!

```bash
cd ~/AWA_Monthly_Reports
./android-setup.sh
```

**خلاص! 30 ثانية فقط** 🚀

---

## ⏹️ كيف أوقف البرنامج؟

في Termux اضغط:

**Volume Down + C**

---

<div align="center">

## 🎯 ملخص سريع

```
1. pkg install python git clang -y
2. git clone [repo]
3. ./android-setup.sh
4. افتح localhost:5000
5. ✅ يعمل!
```

---

## 💬 محتاج مساعدة؟

**لا تتردد!**

1. شغّل: `./android-doctor.sh` للتشخيص
2. اقرأ: `ANDROID_HELP_AR.md` للحلول
3. افتح Issue على GitHub

---

**🎉 بالتوفيق! 🎉**

**نتمنى لك تجربة ممتعة مع AWA Monthly Reports!**

</div>
