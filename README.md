# نظام التقارير الشهرية الذكي - إدارة الرفق بالحيوان
# AWA Monthly Reports - Intelligent Monthly Report System

<div align="center">

![Python](https://img.shields.io/badge/Python-3.8+-blue.svg)
![Flask](https://img.shields.io/badge/Flask-3.0.0-green.svg)
![License](https://img.shields.io/badge/License-MIT-yellow.svg)

**نظام متطور لإنشاء تقارير شهرية احترافية لإدارة الرفق بالحيوان في بلدية مدينة أبوظبي**

**An advanced system for creating professional monthly reports for the Animal Welfare Administration at Abu Dhabi Municipality**

</div>

---

## 📋 نظرة عامة / Overview

نظام التقارير الشهرية الذكي هو حل شامل ومبتكر مصمم خصيصاً لإدارة الرفق بالحيوان في بلدية مدينة أبوظبي. يقوم النظام بمعالجة المستندات (Word، PowerPoint) والصور تلقائياً لاستخراج البيانات وإنشاء تقارير شهرية احترافية وجذابة بتصميم عالمي.

The Intelligent Monthly Reports System is a comprehensive and innovative solution specifically designed for the Animal Welfare Administration at Abu Dhabi Municipality. The system automatically processes documents (Word, PowerPoint) and images to extract data and create professional, attractive monthly reports with a world-class design.

## ✨ المميزات الرئيسية / Key Features

### 🤖 معالجة ذكية للمستندات / Intelligent Document Processing
- استخراج تلقائي للبيانات من ملفات Word (.docx)
- معالجة عروض PowerPoint (.pptx) واستخراج المحتوى
- معالجة الصور ودعم التوثيق المرئي
- التعرف على الفعاليات والأنشطة تلقائياً
- استخراج الإحصائيات والأرقام من النصوص والجداول

### 📊 تحليل متقدم للبيانات / Advanced Data Analysis
- تحليل شامل للبيانات المستخرجة
- توليد رؤى وملاحظات تلقائية
- حساب مؤشرات الأداء الرئيسية (KPIs)
- تصنيف الفعاليات حسب النوع
- تحليل معدلات المشاركة والتفاعل

### 🎨 تصميم احترافي وعصري / Professional Modern Design
- واجهة مستخدم عصرية وسهلة الاستخدام
- تصميم متجاوب يعمل على جميع الأجهزة
- تقارير بتصميم احترافي جاهز للعرض
- دعم كامل للغة العربية (RTL)
- ألوان وتخطيط مستوحى من الهوية المؤسسية

### 🌐 دعم ثنائي اللغة / Bilingual Support
- واجهة باللغتين العربية والإنجليزية
- تقارير ثنائية اللغة
- دعم الكتابة من اليمين لليسار (RTL)

### 📈 تصور البيانات / Data Visualization
- رسوم بيانية احترافية
- مخططات تفاعلية
- بطاقات إحصائية ملونة
- عرض مرئي للبيانات

### 💾 تصدير متعدد / Multiple Export Options
- تصدير بصيغة HTML
- إمكانية الطباعة
- دعم حفظ PDF (قريباً)

## 🚀 البدء السريع / Quick Start

### المتطلبات / Requirements
- Python 3.8 أو أحدث
- pip (مدير حزم Python)

### 🎯 التثبيت السريع (موصى به) / Quick Start (Recommended)

**أسهل طريقة للتثبيت والتشغيل!**
**Easiest way to install and run!**

#### 🪟 Windows (ويندوز)
```bash
# 1. Download the project from GitHub:
#    Go to: https://github.com/aliabdelaal-adm/AWA_Monthly_Reports
#    Click green "Code" button → "Download ZIP"
#    Extract AWA_Monthly_Reports-main.zip
# 2. Open the extracted AWA_Monthly_Reports-main folder
# 3. Double-click start.bat
```

أو استخدم / Or use:
```cmd
start.bat
```

#### 🍎 macOS/Linux (ماك/لينكس)
```bash
# 1. Download the project from GitHub:
#    Go to: https://github.com/aliabdelaal-adm/AWA_Monthly_Reports
#    Click green "Code" button → "Download ZIP"
#    Extract AWA_Monthly_Reports-main.zip
# 2. Open Terminal in the extracted AWA_Monthly_Reports-main folder
# 3. Run:
chmod +x start.sh
./start.sh
```

#### 📱 Android (أندرويد)

للتثبيت على أجهزة أندرويد، يجب استخدام Termux:

For Android installation, you need to use Termux:

```bash
# 1. Install Termux from F-Droid (NOT Google Play Store):
#    https://f-droid.org/en/packages/com.termux/
# 
# 2. Open Termux and run:
pkg update -y && pkg upgrade -y
pkg install python git clang libjpeg-turbo libpng freetype -y
termux-setup-storage

# 3. Clone and setup:
cd ~
git clone https://github.com/aliabdelaal-adm/AWA_Monthly_Reports.git
cd AWA_Monthly_Reports

# 4. Run automated installation script:
chmod +x start-android.sh
./start-android.sh

# 5. Open browser to: http://localhost:5000
```

> 📖 **دليل أندرويد المبسط (بالعربي) / Simplified Android Guide (in Arabic):**  
> 🇸🇦 [ANDROID_QUICKSTART_AR.md](ANDROID_QUICKSTART_AR.md) - دليل مبسط خطوة بخطوة بالعربي
>
> 📖 **للتعليمات التفصيلية / For detailed instructions:**  
> راجع قسم Android في / See Android section in [INSTALLATION.md](INSTALLATION.md)

**هذا كل شيء! السكريبت سيقوم بكل شيء تلقائياً:**
- ✅ التحقق من متطلبات النظام
- ✅ إنشاء البيئة الافتراضية
- ✅ تثبيت جميع المكتبات
- ✅ إعداد المجلدات المطلوبة
- ✅ تشغيل التطبيق

**That's it! The script will automatically:**
- ✅ Check system requirements
- ✅ Create virtual environment
- ✅ Install all dependencies
- ✅ Set up required directories
- ✅ Start the application

> 🚨 **واجهت مشاكل في التثبيت؟ / Having installation issues?**  
> راجع دليل حل المشاكل / Check the troubleshooting guide: [TROUBLESHOOTING_AR.md](TROUBLESHOOTING_AR.md)

---

### التثبيت اليدوي / Manual Installation

إذا كنت تفضل التثبيت يدوياً / If you prefer manual installation:

1. **استنساخ المستودع / Clone the repository**
```bash
git clone https://github.com/aliabdelaal-adm/AWA_Monthly_Reports.git
cd AWA_Monthly_Reports
```

2. **إنشاء بيئة افتراضية / Create virtual environment**
```bash
python -m venv venv

# On Windows
venv\Scripts\activate

# On macOS/Linux
source venv/bin/activate
```

3. **تثبيت المتطلبات / Install dependencies**
```bash
pip install -r requirements.txt
```

4. **تشغيل التطبيق / Run the application**
```bash
python main.py
```

5. **فتح المتصفح / Open browser**
افتح المتصفح وانتقل إلى: http://localhost:5000

Open your browser and navigate to: http://localhost:5000

## 📖 كيفية الاستخدام / How to Use

### الخطوة 1: الصفحة الرئيسية
- افتح التطبيق على http://localhost:5000
- تعرف على ميزات النظام
- انقر على "ابدأ الآن" للانتقال إلى صفحة الرفع

### الخطوة 2: رفع الملفات
1. اختر **الشهر** و **السنة** للتقرير
2. ارفع ملفاتك:
   - مستندات Word (.docx) تحتوي على تفاصيل الفعاليات والأنشطة
   - عروض PowerPoint (.pptx) تحتوي على معلومات الأنشطة
   - صور (.jpg, .png, .gif) للتوثيق المرئي
3. يمكنك السحب والإفلات أو النقر للاختيار

### الخطوة 3: إنشاء التقرير
1. انقر على زر "إنشاء التقرير"
2. انتظر حتى يتم معالجة المستندات
3. سيتم فتح التقرير تلقائياً في نافذة جديدة

### الخطوة 4: مراجعة وتصدير
1. راجع التقرير المُنشأ
2. اطبع التقرير أو احفظه كـ PDF
3. شارك التقرير مع الإدارة العليا

## 🏗️ البنية المعمارية / Architecture

```
AWA_Monthly_Reports/
│
├── app.py                          # تطبيق Flask الرئيسي
├── requirements.txt                # متطلبات Python
├── .gitignore                     # ملف Git ignore
│
├── app/
│   ├── static/                    # الملفات الثابتة
│   │   ├── css/                   # ملفات الأنماط
│   │   ├── js/                    # ملفات JavaScript
│   │   ├── images/                # الصور
│   │   ├── uploads/               # الملفات المرفوعة
│   │   └── reports/               # التقارير المُنشأة
│   │
│   ├── templates/                 # قوالب HTML
│   │   ├── base.html             # القالب الأساسي
│   │   ├── index.html            # الصفحة الرئيسية
│   │   ├── upload.html           # صفحة الرفع
│   │   └── about.html            # صفحة عن البرنامج
│   │
│   └── utils/                     # الوحدات المساعدة
│       ├── __init__.py
│       ├── document_processor.py  # معالجة المستندات
│       ├── data_analyzer.py       # تحليل البيانات
│       └── report_generator.py    # توليد التقارير
│
├── config/                        # ملفات التكوين
└── data/                          # البيانات المؤقتة
```

## 🔧 التكوين / Configuration

يمكن تخصيص النظام من خلال ملف `app.py`:

```python
app.config['UPLOAD_FOLDER'] = 'app/static/uploads'
app.config['REPORTS_FOLDER'] = 'app/static/reports'
app.config['MAX_CONTENT_LENGTH'] = 50 * 1024 * 1024  # 50MB
app.config['ALLOWED_EXTENSIONS'] = {'docx', 'pptx', 'png', 'jpg', 'jpeg', 'gif'}
```

## 📊 نماذج البيانات / Data Models

### Event (الفعالية)
```python
{
    'title': 'عنوان الفعالية',
    'description': 'وصف تفصيلي',
    'date': 'التاريخ',
    'participants': 'عدد المشاركين',
    'location': 'الموقع'
}
```

### Statistics (الإحصائيات)
```python
{
    'key': 'value',
    'total_events': 15,
    'total_participants': 250
}
```

## 🛠️ التقنيات المستخدمة / Technologies

- **Backend**: Python 3.8+, Flask 3.0.0
- **Document Processing**: python-docx, python-pptx
- **Image Processing**: Pillow
- **Data Analysis**: Pandas, NumPy
- **Visualization**: Matplotlib, Seaborn, Plotly
- **PDF Generation**: ReportLab
- **Frontend**: HTML5, CSS3, JavaScript (Vanilla)
- **Design**: Responsive, RTL Support, Modern UI/UX

## 📝 الترخيص / License

هذا المشروع مرخص بموجب رخصة MIT - انظر ملف [LICENSE](LICENSE) للتفاصيل.

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👥 المساهمة / Contributing

نرحب بالمساهمات! يرجى اتباع الخطوات التالية:

1. Fork المستودع
2. إنشاء فرع للميزة (`git checkout -b feature/AmazingFeature`)
3. Commit التغييرات (`git commit -m 'Add some AmazingFeature'`)
4. Push إلى الفرع (`git push origin feature/AmazingFeature`)
5. فتح Pull Request

## 📧 التواصل / Contact

إدارة الرفق بالحيوان - بلدية مدينة أبوظبي

Animal Welfare Administration - Abu Dhabi Municipality

## 🙏 شكر وتقدير / Acknowledgments

- بلدية مدينة أبوظبي
- إدارة الرفق بالحيوان
- جميع المساهمين في المشروع

---

<div align="center">

**صُنع بـ ❤️ لإدارة الرفق بالحيوان - بلدية مدينة أبوظبي**

**Made with ❤️ for Animal Welfare Administration - Abu Dhabi Municipality**

</div>