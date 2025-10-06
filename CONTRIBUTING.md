# المساهمة في المشروع / Contributing to the Project

شكراً لاهتمامك بالمساهمة في نظام التقارير الشهرية لإدارة الرفق بالحيوان!

Thank you for your interest in contributing to the AWA Monthly Reports System!

## كيفية المساهمة / How to Contribute

### 1. الإبلاغ عن المشاكل / Reporting Issues

إذا وجدت خطأ أو لديك اقتراح لتحسين:

If you find a bug or have a suggestion for improvement:

- افتح Issue جديد في GitHub
- قدم وصفاً تفصيلياً للمشكلة أو الاقتراح
- أضف لقطات شاشة إذا كان ذلك مناسباً

### 2. المساهمة بالكود / Code Contributions

#### Fork والاستنساخ / Fork and Clone

```bash
# Fork المستودع على GitHub ثم استنسخه
git clone https://github.com/YOUR_USERNAME/AWA_Monthly_Reports.git
cd AWA_Monthly_Reports
```

#### إنشاء فرع جديد / Create a New Branch

```bash
git checkout -b feature/your-feature-name
```

#### إجراء التغييرات / Make Your Changes

- اتبع أسلوب الكود الموجود
- أضف تعليقات واضحة بالعربية والإنجليزية
- تأكد من أن الكود يعمل بشكل صحيح

#### اختبار التغييرات / Test Your Changes

```bash
python app.py
# اختبر جميع الميزات الجديدة والموجودة
```

#### Commit و Push

```bash
git add .
git commit -m "Add: وصف التغيير بالعربية / Description in English"
git push origin feature/your-feature-name
```

#### فتح Pull Request

- افتح Pull Request على GitHub
- قدم وصفاً واضحاً للتغييرات
- اربط Issue ذات الصلة إن وجدت

## إرشادات الكود / Code Guidelines

### Python

- استخدم PEP 8 style guide
- أضف docstrings للوظائف والفئات
- استخدم أسماء متغيرات واضحة

```python
def process_document(filepath):
    """
    معالجة المستند واستخراج البيانات
    Process document and extract data
    
    Args:
        filepath (str): مسار الملف
        
    Returns:
        dict: البيانات المستخرجة
    """
    pass
```

### HTML/CSS

- استخدم مسافات بادئة متسقة (2 أو 4 مسافات)
- أضف تعليقات للأقسام الرئيسية
- تأكد من دعم RTL للنصوص العربية

### JavaScript

- استخدم ES6+ features
- أضف تعليقات واضحة
- تعامل مع الأخطاء بشكل مناسب

## معايير التصميم / Design Standards

- دعم الاتجاه من اليمين لليسار (RTL)
- استخدام ألوان متسقة مع الهوية
- تصميم متجاوب لجميع الأجهزة
- إمكانية الوصول (Accessibility)

## الاختبار / Testing

قبل إرسال Pull Request:

Before submitting a Pull Request:

- ✅ اختبر جميع الميزات الجديدة
- ✅ تأكد من عدم كسر الميزات الموجودة
- ✅ اختبر على متصفحات مختلفة
- ✅ اختبر مع بيانات عربية وإنجليزية

## الترخيص / License

بالمساهمة في هذا المشروع، فإنك توافق على ترخيص مساهماتك تحت MIT License.

By contributing to this project, you agree to license your contributions under the MIT License.

## الأسئلة / Questions

إذا كان لديك أي أسئلة، يرجى:

If you have any questions, please:

- فتح Issue للمناقشة
- التواصل مع مشرفي المشروع

## شكراً! / Thank You!

شكراً لمساهمتك في جعل نظام التقارير الشهرية أفضل!

Thank you for contributing to make the Monthly Reports System better!
