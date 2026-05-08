import re

def validate_phone(phone):
    pattern_phone = r"^\+\d{9,17}$"
    return re.match(pattern_phone, phone) is not None


def validate_name(name):
    pattern_name = r"^[А-Яа-яЁё]{2,40}$"
    return re.match(pattern_name, name) is not None

def validate_activity(activity):
    pattern_activity = r'^[^A-Za-z]*[А-Яа-яЁё][^A-Za-z]*$'

    if len(activity) < 10 or len(activity) > 200:
        return False

    return re.match(pattern_activity, activity) is not None