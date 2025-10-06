"""
Data Analyzer Module
Analyzes extracted data and generates insights
"""

import pandas as pd
from datetime import datetime
from collections import Counter

class DataAnalyzer:
    """Analyze report data and generate insights"""
    
    def __init__(self):
        pass
    
    def analyze(self, data):
        """
        Perform comprehensive analysis on extracted data
        """
        analysis = {
            'summary': self._generate_summary(data),
            'trends': self._analyze_trends(data),
            'insights': self._generate_insights(data),
            'metrics': self._calculate_metrics(data)
        }
        
        return analysis
    
    def _generate_summary(self, data):
        """Generate executive summary"""
        summary = {
            'total_events': len(data.get('events', [])),
            'total_activities': len(data.get('activities', [])),
            'total_images': len(data.get('images', [])),
            'month': data.get('month', ''),
            'year': data.get('year', ''),
            'statistics_count': len(data.get('statistics', {}))
        }
        
        # Calculate total participants
        total_participants = 0
        for event in data.get('events', []):
            if event.get('participants'):
                total_participants += event['participants']
        
        summary['total_participants'] = total_participants
        
        return summary
    
    def _analyze_trends(self, data):
        """Analyze trends in the data"""
        trends = {
            'event_types': self._categorize_events(data.get('events', [])),
            'activity_distribution': self._analyze_activity_distribution(data),
            'engagement_metrics': self._calculate_engagement(data)
        }
        
        return trends
    
    def _generate_insights(self, data):
        """Generate actionable insights"""
        insights = []
        
        events = data.get('events', [])
        
        if len(events) > 5:
            insights.append({
                'type': 'positive',
                'title': 'نشاط مكثف / High Activity',
                'description': f'تم تنظيم {len(events)} فعالية هذا الشهر، مما يدل على نشاط مكثف في الإدارة'
            })
        
        statistics = data.get('statistics', {})
        if statistics:
            insights.append({
                'type': 'info',
                'title': 'البيانات الإحصائية / Statistical Data',
                'description': f'تم جمع {len(statistics)} مؤشر إحصائي رئيسي'
            })
        
        if data.get('images'):
            insights.append({
                'type': 'info',
                'title': 'التوثيق المرئي / Visual Documentation',
                'description': f'تم توثيق الأنشطة بـ {len(data["images"])} صورة'
            })
        
        return insights
    
    def _calculate_metrics(self, data):
        """Calculate key performance metrics"""
        metrics = {}
        
        # Events metrics
        events = data.get('events', [])
        if events:
            metrics['avg_participants_per_event'] = sum(
                e.get('participants', 0) for e in events
            ) / len(events) if events else 0
        
        # Activity completion rate (sample metric)
        metrics['activity_completion_rate'] = 85.5  # Placeholder
        
        # Engagement score (sample calculation)
        metrics['engagement_score'] = min(100, len(events) * 10 + len(data.get('images', [])) * 5)
        
        return metrics
    
    def _categorize_events(self, events):
        """Categorize events by type"""
        categories = {
            'workshops': 0,
            'conferences': 0,
            'campaigns': 0,
            'inspections': 0,
            'training': 0,
            'other': 0
        }
        
        keywords_map = {
            'workshops': ['ورشة', 'workshop'],
            'conferences': ['مؤتمر', 'conference', 'ندوة'],
            'campaigns': ['حملة', 'campaign'],
            'inspections': ['تفتيش', 'inspection', 'زيارة'],
            'training': ['تدريب', 'training', 'دورة']
        }
        
        for event in events:
            title = event.get('title', '').lower()
            description = event.get('description', '').lower()
            text = title + ' ' + description
            
            categorized = False
            for category, keywords in keywords_map.items():
                if any(keyword in text for keyword in keywords):
                    categories[category] += 1
                    categorized = True
                    break
            
            if not categorized:
                categories['other'] += 1
        
        return categories
    
    def _analyze_activity_distribution(self, data):
        """Analyze how activities are distributed"""
        distribution = {
            'by_type': {},
            'by_location': {},
            'by_date': {}
        }
        
        # Simplified distribution analysis
        events = data.get('events', [])
        for event in events:
            # By location
            location = event.get('location', 'غير محدد / Unspecified')
            if location:
                distribution['by_location'][location] = distribution['by_location'].get(location, 0) + 1
        
        return distribution
    
    def _calculate_engagement(self, data):
        """Calculate engagement metrics"""
        engagement = {
            'participation_rate': 0,
            'documentation_quality': 0,
            'activity_diversity': 0
        }
        
        events = data.get('events', [])
        if events:
            # Participation rate based on number of participants
            total_participants = sum(e.get('participants', 0) for e in events)
            engagement['participation_rate'] = min(100, total_participants / 10)
        
        # Documentation quality based on images
        images = data.get('images', [])
        engagement['documentation_quality'] = min(100, len(images) * 10)
        
        # Activity diversity
        event_types = self._categorize_events(events)
        active_types = sum(1 for count in event_types.values() if count > 0)
        engagement['activity_diversity'] = (active_types / len(event_types)) * 100
        
        return engagement
