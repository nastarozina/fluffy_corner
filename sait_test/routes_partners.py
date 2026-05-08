"""
Routes and views for partners management.
"""

from bottle import route, view, template, redirect, request
import json
import os
from datetime import datetime
import re

#  PARTNERS SETTINGS 
PARTNERS_FILE = r"static\partners.json"

# Load partners from JSON file
def load_partners():
    """Load partners list from JSON file"""
    if os.path.exists(PARTNERS_FILE):
        with open(PARTNERS_FILE, "r", encoding="utf-8-sig") as f:
            partners = json.load(f)
            # Sort by date (newest first)
            partners.sort(key=lambda x: x.get('date', ''), reverse=True)
            return partners
    return []

# Save partners to JSON file
def save_partners(partners):
    """Save partners list to JSON file"""
    with open(PARTNERS_FILE, "w", encoding="utf-8") as f:
        json.dump(partners, f, ensure_ascii=False, indent=2)

# Phone validation (Russian numbers)
def validate_phone(phone):
    """Check phone number validity"""
    pattern = r'^(\+7|7|8)?[\s\-]?\(?[0-9]{3}\)?[\s\-]?[0-9]{3}[\s\-]?[0-9]{2}[\s\-]?[0-9]{2}$'
    return re.match(pattern, phone) is not None

# Date validation
def validate_date(date_str):
    """Check date validity in YYYY-MM-DD format"""
    try:
        datetime.strptime(date_str, '%Y-%m-%d')
        return True
    except ValueError:
        return False

# ========== PARTNERS ROUTES ==========

@route('/partners')
@view('partners')
def partners_page():
    """Renders the partners page."""
    partners = load_partners()
    return dict(
        title='Partners',
        partners=partners,
        errors={},
        form_data={}
    )

@route('/add_partner', method='POST')
def add_partner():
    """Handle adding a new partner"""
    partners = load_partners()
    errors = {}
    form_data = {
        'name': '',
        'phone': '',
        'description': '',
        'date': ''
    }
    
    # Get data from form
    name = request.forms.get('name', '').strip()
    phone = request.forms.get('phone', '').strip()
    description = request.forms.get('description', '').strip()
    date = request.forms.get('date', '').strip()
    
    form_data['name'] = name
    form_data['phone'] = phone
    form_data['description'] = description
    form_data['date'] = date
    
    # Validation
    if not name:
        errors['name'] = 'Please enter company name'
    
    if not phone:
        errors['phone'] = 'Please enter phone number'
    elif not validate_phone(phone):
        errors['phone'] = 'Invalid phone format. Examples: +7(123)456-78-90, 89123456789'
    
    if not description:
        errors['description'] = 'Please enter company description'
    elif len(description) < 10:
        errors['description'] = 'Description must be at least 10 characters'
    
    if not date:
        errors['date'] = 'Please enter registration date'
    elif not validate_date(date):
        errors['date'] = 'Invalid date format. Use YYYY-MM-DD'
    
    # If errors, return page with errors
    if errors:
        return template('partners', 
                       title='Partners',
                       partners=partners,
                       errors=errors,
                       form_data=form_data)
    
    # Create new partner
    new_partner = {
        'id': len(partners) + 1 if partners else 1,
        'name': name,
        'phone': phone,
        'description': description,
        'date': date
    }
    
    partners.append(new_partner)
    save_partners(partners)
    
    # Redirect to partners page
    redirect('/partners')