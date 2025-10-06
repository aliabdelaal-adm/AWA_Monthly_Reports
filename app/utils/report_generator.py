"""
Report Generator Module
Generates beautiful HTML and PDF reports
"""

import os
from datetime import datetime
import json

class ReportGenerator:
    """Generate monthly reports in various formats"""
    
    def __init__(self):
        self.reports_folder = 'app/static/reports'
        os.makedirs(self.reports_folder, exist_ok=True)
    
    def generate_html_report(self, data):
        """Generate HTML report"""
        timestamp = datetime.now().strftime('%Y%m%d_%H%M%S')
        # Clean filename to avoid special characters
        month = str(data.get('month', 'month')).replace('/', '_').replace(' ', '_')
        year = str(data.get('year', 'year'))
        filename = f"report_{month}_{year}_{timestamp}.html"
        filepath = os.path.join(self.reports_folder, filename)
        
        html_content = self._build_html_report(data)
        
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write(html_content)
        
        return filename
    
    def generate_pdf_report(self, data):
        """Generate PDF report"""
        # This would use reportlab or similar library
        # For now, returning a placeholder
        timestamp = datetime.now().strftime('%Y%m%d_%H%M%S')
        # Clean filename to avoid special characters
        month = str(data.get('month', 'month')).replace('/', '_').replace(' ', '_')
        year = str(data.get('year', 'year'))
        filename = f"report_{month}_{year}_{timestamp}.pdf"
        return filename
    
    def _build_html_report(self, data):
        """Build HTML content for report"""
        month = data.get('month', '')
        year = data.get('year', '')
        analysis = data.get('analysis', {})
        summary = analysis.get('summary', {})
        events = data.get('events', [])
        statistics = data.get('statistics', {})
        insights = analysis.get('insights', [])
        
        html = f"""
<!DOCTYPE html>
<html dir="rtl" lang="ar">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>تقرير شهري - إدارة الرفق بالحيوان - {month} {year}</title>
    <style>
        * {{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }}
        
        body {{
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            padding: 20px;
            line-height: 1.6;
        }}
        
        .container {{
            max-width: 1200px;
            margin: 0 auto;
            background: white;
            border-radius: 20px;
            box-shadow: 0 20px 60px rgba(0,0,0,0.3);
            overflow: hidden;
        }}
        
        .header {{
            background: linear-gradient(135deg, #1e3c72 0%, #2a5298 100%);
            color: white;
            padding: 40px;
            text-align: center;
        }}
        
        .header h1 {{
            font-size: 2.5em;
            margin-bottom: 10px;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
        }}
        
        .header .subtitle {{
            font-size: 1.2em;
            opacity: 0.9;
        }}
        
        .logo-section {{
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 30px;
            margin-top: 20px;
        }}
        
        .summary-cards {{
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            padding: 40px;
            background: #f8f9fa;
        }}
        
        .card {{
            background: white;
            padding: 25px;
            border-radius: 15px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            transition: transform 0.3s ease;
            border-right: 5px solid #667eea;
        }}
        
        .card:hover {{
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.15);
        }}
        
        .card-title {{
            color: #666;
            font-size: 0.9em;
            margin-bottom: 10px;
        }}
        
        .card-value {{
            font-size: 2.5em;
            font-weight: bold;
            color: #1e3c72;
        }}
        
        .section {{
            padding: 40px;
        }}
        
        .section-title {{
            font-size: 2em;
            color: #1e3c72;
            margin-bottom: 30px;
            padding-bottom: 15px;
            border-bottom: 3px solid #667eea;
        }}
        
        .insights {{
            display: grid;
            gap: 15px;
            margin-bottom: 30px;
        }}
        
        .insight {{
            padding: 20px;
            border-radius: 10px;
            border-right: 4px solid #28a745;
            background: #f0f9ff;
        }}
        
        .insight.info {{
            border-right-color: #17a2b8;
            background: #e7f7ff;
        }}
        
        .insight-title {{
            font-weight: bold;
            margin-bottom: 8px;
            color: #1e3c72;
        }}
        
        .events-grid {{
            display: grid;
            gap: 20px;
        }}
        
        .event-card {{
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            padding: 25px;
            border-radius: 15px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }}
        
        .event-title {{
            font-size: 1.3em;
            font-weight: bold;
            color: #1e3c72;
            margin-bottom: 15px;
        }}
        
        .event-details {{
            display: grid;
            gap: 10px;
            margin-top: 15px;
        }}
        
        .event-detail {{
            display: flex;
            align-items: center;
            gap: 10px;
        }}
        
        .event-detail-label {{
            font-weight: bold;
            color: #666;
        }}
        
        .statistics-table {{
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }}
        
        .statistics-table th,
        .statistics-table td {{
            padding: 15px;
            text-align: right;
            border-bottom: 1px solid #ddd;
        }}
        
        .statistics-table th {{
            background: #1e3c72;
            color: white;
            font-weight: bold;
        }}
        
        .statistics-table tr:hover {{
            background: #f5f5f5;
        }}
        
        .footer {{
            background: #1e3c72;
            color: white;
            padding: 30px;
            text-align: center;
        }}
        
        .print-button {{
            background: #667eea;
            color: white;
            padding: 15px 30px;
            border: none;
            border-radius: 8px;
            font-size: 1.1em;
            cursor: pointer;
            margin: 20px;
        }}
        
        @media print {{
            .print-button {{ display: none; }}
            body {{ background: white; padding: 0; }}
        }}
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>التقرير الشهري</h1>
            <div class="subtitle">إدارة الرفق بالحيوان - بلدية مدينة أبوظبي</div>
            <div class="subtitle" style="margin-top: 10px;">Animal Welfare Administration - Abu Dhabi Municipality</div>
            <h2 style="margin-top: 20px;">{month} {year}</h2>
        </div>
        
        <div class="summary-cards">
            <div class="card">
                <div class="card-title">إجمالي الفعاليات / Total Events</div>
                <div class="card-value">{summary.get('total_events', 0)}</div>
            </div>
            <div class="card">
                <div class="card-title">إجمالي الأنشطة / Total Activities</div>
                <div class="card-value">{summary.get('total_activities', 0)}</div>
            </div>
            <div class="card">
                <div class="card-title">إجمالي المشاركين / Total Participants</div>
                <div class="card-value">{summary.get('total_participants', 0)}</div>
            </div>
            <div class="card">
                <div class="card-title">التوثيق المرئي / Visual Documentation</div>
                <div class="card-value">{summary.get('total_images', 0)}</div>
            </div>
        </div>
        
        <div class="section">
            <h2 class="section-title">الرؤى والتحليلات / Insights & Analysis</h2>
            <div class="insights">
"""
        
        for insight in insights:
            insight_class = insight.get('type', 'info')
            html += f"""
                <div class="insight {insight_class}">
                    <div class="insight-title">{insight.get('title', '')}</div>
                    <div>{insight.get('description', '')}</div>
                </div>
"""
        
        html += """
            </div>
        </div>
"""
        
        if events:
            html += """
        <div class="section">
            <h2 class="section-title">الفعاليات والأنشطة / Events & Activities</h2>
            <div class="events-grid">
"""
            for event in events[:10]:  # Limit to first 10 events
                html += f"""
                <div class="event-card">
                    <div class="event-title">{event.get('title', 'فعالية')}</div>
                    <div class="event-details">
"""
                if event.get('date'):
                    html += f"""
                        <div class="event-detail">
                            <span class="event-detail-label">التاريخ / Date:</span>
                            <span>{event.get('date')}</span>
                        </div>
"""
                if event.get('participants'):
                    html += f"""
                        <div class="event-detail">
                            <span class="event-detail-label">عدد المشاركين / Participants:</span>
                            <span>{event.get('participants')}</span>
                        </div>
"""
                if event.get('location'):
                    html += f"""
                        <div class="event-detail">
                            <span class="event-detail-label">الموقع / Location:</span>
                            <span>{event.get('location')}</span>
                        </div>
"""
                html += """
                    </div>
                </div>
"""
            
            html += """
            </div>
        </div>
"""
        
        if statistics:
            html += """
        <div class="section">
            <h2 class="section-title">البيانات الإحصائية / Statistical Data</h2>
            <table class="statistics-table">
                <thead>
                    <tr>
                        <th>القيمة / Value</th>
                        <th>المؤشر / Indicator</th>
                    </tr>
                </thead>
                <tbody>
"""
            for key, value in statistics.items():
                html += f"""
                    <tr>
                        <td>{value}</td>
                        <td>{key}</td>
                    </tr>
"""
            
            html += """
                </tbody>
            </table>
        </div>
"""
        
        html += f"""
        <div class="footer">
            <h3>بلدية مدينة أبوظبي - إدارة الرفق بالحيوان</h3>
            <p>Abu Dhabi Municipality - Animal Welfare Administration</p>
            <p style="margin-top: 15px;">تم إنشاء التقرير في: {datetime.now().strftime('%Y-%m-%d %H:%M')}</p>
        </div>
    </div>
    
    <button class="print-button" onclick="window.print()">طباعة التقرير / Print Report</button>
</body>
</html>
"""
        
        return html
