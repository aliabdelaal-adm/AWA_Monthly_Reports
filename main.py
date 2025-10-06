"""
AWA Monthly Reports - Main Application
Animal Welfare Administration Monthly Report Generator
Abu Dhabi Municipality, UAE
"""

from flask import Flask, render_template, request, jsonify, send_file, redirect, url_for
import os
from datetime import datetime
from werkzeug.utils import secure_filename
from app.utils.document_processor import DocumentProcessor
from app.utils.report_generator import ReportGenerator
from app.utils.data_analyzer import DataAnalyzer

app = Flask(__name__, 
            template_folder='app/templates',
            static_folder='app/static')

app.config['UPLOAD_FOLDER'] = 'app/static/uploads'
app.config['REPORTS_FOLDER'] = 'app/static/reports'
app.config['MAX_CONTENT_LENGTH'] = 50 * 1024 * 1024  # 50MB max file size
app.config['ALLOWED_EXTENSIONS'] = {'docx', 'pptx', 'png', 'jpg', 'jpeg', 'gif', 'pdf'}

# Ensure directories exist
os.makedirs(app.config['UPLOAD_FOLDER'], exist_ok=True)
os.makedirs(app.config['REPORTS_FOLDER'], exist_ok=True)

def allowed_file(filename):
    """Check if file extension is allowed"""
    return '.' in filename and \
           filename.rsplit('.', 1)[1].lower() in app.config['ALLOWED_EXTENSIONS']

@app.route('/')
def index():
    """Main dashboard page"""
    return render_template('index.html')

@app.route('/upload')
def upload_page():
    """Upload page for documents and images"""
    return render_template('upload.html')

@app.route('/api/upload', methods=['POST'])
def upload_file():
    """Handle file uploads"""
    try:
        if 'files' not in request.files:
            return jsonify({'error': 'No files provided'}), 400
        
        files = request.files.getlist('files')
        uploaded_files = []
        
        for file in files:
            if file and allowed_file(file.filename):
                filename = secure_filename(file.filename)
                timestamp = datetime.now().strftime('%Y%m%d_%H%M%S')
                filename = f"{timestamp}_{filename}"
                filepath = os.path.join(app.config['UPLOAD_FOLDER'], filename)
                file.save(filepath)
                uploaded_files.append({
                    'filename': filename,
                    'original_name': file.filename,
                    'path': filepath
                })
        
        return jsonify({
            'success': True,
            'files': uploaded_files,
            'count': len(uploaded_files)
        })
    
    except Exception as e:
        return jsonify({'error': str(e)}), 500

@app.route('/api/process', methods=['POST'])
def process_documents():
    """Process uploaded documents and extract data"""
    try:
        data = request.json
        month = data.get('month')
        year = data.get('year')
        files = data.get('files', [])
        
        processor = DocumentProcessor()
        extracted_data = {
            'month': month,
            'year': year,
            'events': [],
            'activities': [],
            'statistics': {},
            'images': []
        }
        
        for file_info in files:
            filepath = file_info['path']
            file_ext = filepath.rsplit('.', 1)[1].lower()
            
            if file_ext == 'docx':
                doc_data = processor.process_word_document(filepath)
                extracted_data['events'].extend(doc_data.get('events', []))
                extracted_data['activities'].extend(doc_data.get('activities', []))
                extracted_data['statistics'].update(doc_data.get('statistics', {}))
            
            elif file_ext == 'pptx':
                ppt_data = processor.process_powerpoint(filepath)
                extracted_data['events'].extend(ppt_data.get('events', []))
                extracted_data['activities'].extend(ppt_data.get('activities', []))
            
            elif file_ext in ['png', 'jpg', 'jpeg', 'gif']:
                extracted_data['images'].append(file_info)
        
        # Analyze the data
        analyzer = DataAnalyzer()
        analysis = analyzer.analyze(extracted_data)
        extracted_data['analysis'] = analysis
        
        return jsonify({
            'success': True,
            'data': extracted_data
        })
    
    except Exception as e:
        return jsonify({'error': str(e)}), 500

@app.route('/api/generate-report', methods=['POST'])
def generate_report():
    """Generate the final monthly report"""
    try:
        data = request.json
        
        generator = ReportGenerator()
        report_path = generator.generate_html_report(data)
        pdf_path = generator.generate_pdf_report(data)
        
        return jsonify({
            'success': True,
            'html_report': report_path,
            'pdf_report': pdf_path
        })
    
    except Exception as e:
        return jsonify({'error': str(e)}), 500

@app.route('/report/<filename>')
def view_report(filename):
    """View generated report"""
    return send_file(os.path.join(app.config['REPORTS_FOLDER'], filename))

@app.route('/preview')
def preview():
    """Preview report page"""
    return render_template('preview.html')

@app.route('/about')
def about():
    """About page"""
    return render_template('about.html')

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
