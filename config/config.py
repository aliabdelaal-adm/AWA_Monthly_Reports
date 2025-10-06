"""
Configuration file for AWA Monthly Reports
"""

import os

class Config:
    """Base configuration"""
    
    # Application settings
    SECRET_KEY = os.environ.get('SECRET_KEY') or 'awa-monthly-reports-secret-key-2024'
    DEBUG = True
    
    # Upload settings
    UPLOAD_FOLDER = 'app/static/uploads'
    REPORTS_FOLDER = 'app/static/reports'
    MAX_CONTENT_LENGTH = 50 * 1024 * 1024  # 50MB max file size
    ALLOWED_EXTENSIONS = {'docx', 'pptx', 'png', 'jpg', 'jpeg', 'gif', 'pdf'}
    
    # Language settings
    DEFAULT_LANGUAGE = 'ar'  # Arabic
    SUPPORTED_LANGUAGES = ['ar', 'en']
    
    # Report settings
    REPORT_TITLE = 'التقرير الشهري - إدارة الرفق بالحيوان'
    REPORT_TITLE_EN = 'Monthly Report - Animal Welfare Administration'
    ORGANIZATION = 'بلدية مدينة أبوظبي'
    ORGANIZATION_EN = 'Abu Dhabi Municipality'
    
    # Keywords for data extraction
    EVENT_KEYWORDS_AR = ['فعالية', 'حدث', 'نشاط', 'ورشة', 'مؤتمر', 'ندوة', 'حملة']
    EVENT_KEYWORDS_EN = ['event', 'activity', 'workshop', 'conference', 'campaign', 'seminar']
    
    STATISTICS_KEYWORDS_AR = ['عدد', 'إحصائية', 'إجمالي', 'مجموع']
    STATISTICS_KEYWORDS_EN = ['number', 'count', 'total', 'sum', 'statistics']
    
    # Color scheme
    PRIMARY_COLOR = '#1e3c72'
    SECONDARY_COLOR = '#667eea'
    ACCENT_COLOR = '#764ba2'
    SUCCESS_COLOR = '#28a745'
    INFO_COLOR = '#17a2b8'
    WARNING_COLOR = '#ffc107'
    DANGER_COLOR = '#dc3545'

class DevelopmentConfig(Config):
    """Development configuration"""
    DEBUG = True

class ProductionConfig(Config):
    """Production configuration"""
    DEBUG = False

# Configuration dictionary
config = {
    'development': DevelopmentConfig,
    'production': ProductionConfig,
    'default': DevelopmentConfig
}
