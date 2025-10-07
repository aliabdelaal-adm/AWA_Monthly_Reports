# 📱 مرجع سريع لأندرويد / Android Quick Reference

## ⚡ أسرع طريقة - 3 أوامر فقط

```bash
# 1. الذهاب للمجلد
cd ~/AWA_Monthly_Reports

# 2. تشغيل السكريبت الذكي
./android-setup.sh

# 3. فتح المتصفح
# افتح: http://localhost:5000
```

---

## 🔧 الأوامر الأساسية

### التثبيت لأول مرة
```bash
pkg update -y && pkg upgrade -y
pkg install python git clang libjpeg-turbo libpng freetype -y
termux-setup-storage
cd ~
git clone https://github.com/aliabdelaal-adm/AWA_Monthly_Reports.git
cd AWA_Monthly_Reports
chmod +x android-setup.sh
./android-setup.sh
```

### تشغيل البرنامج
```bash
cd ~/AWA_Monthly_Reports
./android-setup.sh
```

### تشخيص المشاكل
```bash
cd ~/AWA_Monthly_Reports
./android-doctor.sh
```

### إيقاف البرنامج
```
Volume Down + C
```

---

## 🔗 الروابط للمتصفح

جرب هذه الروابط بالترتيب:
1. `http://localhost:5000`
2. `http://127.0.0.1:5000`
3. `http://0.0.0.0:5000`

---

## 📚 أدلة سريعة

| تريد | اقرأ/شغّل |
|------|-----------|
| تثبيت | `ANDROID_QUICKSTART_AR.md` |
| كل شيء | `ANDROID_README.md` |
| مشكلة | `ANDROID_HELP_AR.md` |
| أي ملف؟ | `ANDROID_WHICH_FILE.md` |
| تشخيص | `./android-doctor.sh` |
| تشغيل | `./android-setup.sh` |

---

## 🆘 حلول سريعة

### Python غير مثبت
```bash
pkg install python -y
```

### Permission denied
```bash
chmod +x *.sh
```

### لا يفتح localhost
- جرب: `http://127.0.0.1:5000`
- تأكد أن البرنامج يعمل في Termux

### Termux يتوقف
- Settings → Battery → Termux → Don't optimize

### بطيء جداً
- أغلق التطبيقات الأخرى
- وصّل الشاحن
- أعد تشغيل الجهاز

---

## 💡 نصائح مهمة

✅ استخدم WiFi (ليس بيانات)  
✅ البطارية 50%+  
✅ 1GB مساحة فارغة  
✅ أوقف تحسين البطارية لـ Termux  
✅ لا تقفل Termux أثناء التشغيل

---

## 🎯 المسار السريع للنجاح

```
1. ثبّت Termux من F-Droid
   ↓
2. pkg install python git clang -y
   ↓
3. git clone [repo]
   ↓
4. ./android-setup.sh
   ↓
5. افتح localhost:5000
   ↓
6. ✅ يعمل!
```

---

## 🔄 الاستخدام اليومي

```bash
# افتح Termux
cd ~/AWA_Monthly_Reports
./android-setup.sh
# افتح localhost:5000
# استخدم التطبيق
# Volume Down + C للإيقاف
```

---

<div align="center">

**🎉 هذا كل ما تحتاجه! 🎉**

للتفاصيل: [ANDROID_README.md](ANDROID_README.md)

</div>
