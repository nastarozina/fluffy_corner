
"""
Модуль unit-тестов для проверки функциональности страницы партнёрских компаний.

Данный модуль содержит набор тестов для проверки:
1. Валидации телефонных номеров (форматы российских номеров)
2. Валидации дат (формат ГГГГ-ММ-ДД и корректность дат)
3. Операций загрузки и сохранения данных партнёров

Автор: Студент
Дата: 2026
"""

import unittest
import os
import json
import tempfile
from datetime import datetime
import sys

# Добавляем корневую директорию проекта в путь для импорта
sys.path.insert(0, os.path.dirname(__file__))

# Импортируем тестируемые функции из модуля партнёров
from routes_partners import validate_phone, validate_date, load_partners, save_partners


class TestPhoneValidation(unittest.TestCase):
    """
    Класс для тестирования валидации телефонных номеров.
    Проверяет корректность работы функции validate_phone().
    """
    
    def test_valid_phones_with_plus_seven(self):
        """
        ТЕСТ №1: Проверка корректных номеров телефонов с префиксом +7.
        
        Ожидаемый результат: Все номера должны проходить валидацию.
        Проверяются различные форматы: со скобками, дефисами, пробелами и без них.
        """
        # Список корректных номеров в разных форматах
        valid_phones = [
            '+7(123)456-78-90',      # Стандартный формат со скобками и дефисами
            '+7(123)4567890',         # Формат со скобками, но без дефисов
            '+7 123 456 78 90',       # Формат с пробелами
            '+7-123-456-78-90',       # Формат с дефисами
            '+71234567890'            # Сплошной формат без разделителей
        ]
        
        # Проверяем каждый номер в отдельности
        for phone in valid_phones:
            with self.subTest(phone=phone):
                self.assertTrue(validate_phone(phone), 
                    f"Номер телефона '{phone}' должен считаться корректным")
    
    def test_valid_phones_with_eight(self):
        """
        ТЕСТ №2: Проверка корректных номеров телефонов с префиксом 8.
        
        Ожидаемый результат: Все номера, начинающиеся с 8, должны проходить валидацию.
        """
        valid_phones = [
            '8(123)456-78-90',       # Формат 8 со скобками
            '8(123)4567890',          # Формат 8 со скобками без дефисов
            '8 123 456 78 90',        # Формат 8 с пробелами
            '8-123-456-78-90',        # Формат 8 с дефисами
            '81234567890'             # Сплошной формат с 8
        ]
        
        for phone in valid_phones:
            with self.subTest(phone=phone):
                self.assertTrue(validate_phone(phone),
                    f"Номер телефона '{phone}' должен считаться корректным")
    
    def test_valid_phones_with_seven_without_plus(self):
        """
        ТЕСТ №3: Проверка корректных номеров телефонов с префиксом 7 (без плюса).
        
        Ожидаемый результат: Все номера, начинающиеся с 7, должны проходить валидацию.
        """
        valid_phones = [
            '7(123)456-78-90',       # Формат 7 со скобками
            '7(123)4567890',          # Формат 7 со скобками без дефисов
            '7 123 456 78 90',        # Формат 7 с пробелами
            '7-123-456-78-90',        # Формат 7 с дефисами
            '71234567890'             # Сплошной формат с 7
        ]
        
        for phone in valid_phones:
            with self.subTest(phone=phone):
                self.assertTrue(validate_phone(phone),
                    f"Номер телефона '{phone}' должен считаться корректным")
    
    def test_invalid_phones_empty_or_short(self):
        """
        ТЕСТ №4: Проверка некорректных номеров (пустые и слишком короткие).
        
        Ожидаемый результат: Все эти номера НЕ должны проходить валидацию.
        """
        invalid_phones = [
            '',                        # Пустая строка
            ' ',                       # Только пробел
            '123',                     # Слишком короткий номер
            '12345',                   # Недостаточно цифр
            '123456789'                # 9 цифр (должно быть 10)
        ]
        
        for phone in invalid_phones:
            with self.subTest(phone=phone):
                self.assertFalse(validate_phone(phone),
                    f"Номер телефона '{phone}' должен считаться некорректным")
    
    def test_invalid_phones_wrong_format(self):
        """
        ТЕСТ №5: Проверка некорректных номеров (неправильный формат).
        
        Ожидаемый результат: Номера с неправильной структурой НЕ должны проходить валидацию.
        """
        invalid_phones = [
            '+1(123)456-78-90',       # Неправильный код страны (не Россия)
            '911-123-45-67',           # Американский формат
            'телефон',                 # Текстовое значение
            'phone123',                # Смесь букв и цифр
            '123-45-67',               # Слишком мало цифр
            '8(123)456-78-901'         # Слишком много цифр
        ]
        
        for phone in invalid_phones:
            with self.subTest(phone=phone):
                self.assertFalse(validate_phone(phone),
                    f"Номер телефона '{phone}' должен считаться некорректным")
    
    def test_invalid_phones_with_special_chars(self):
        """
        ТЕСТ №6: Проверка номеров с недопустимыми специальными символами.
        
        Ожидаемый результат: Номера с недопустимыми символами НЕ должны проходить валидацию.
        """
        invalid_phones = [
            '+7(123)456-78-90#',      # Решётка в конце
            '+7*123*456*78*90',        # Звёздочки вместо разделителей
            '+7(123)456_78_90',        # Нижние подчёркивания
            '8[123]456-78-90',         # Квадратные скобки вместо круглых
            '+7 123 456 78 90!'        # Восклицательный знак
        ]
        
        for phone in invalid_phones:
            with self.subTest(phone=phone):
                self.assertFalse(validate_phone(phone),
                    f"Номер телефона '{phone}' должен считаться некорректным")


class TestDateValidation(unittest.TestCase):
    """
    Класс для тестирования валидации дат.
    Проверяет корректность работы функции validate_date().
    """
    
    def test_valid_dates_standard(self):
        """
        ТЕСТ №7: Проверка корректных дат в стандартном формате.
        
        Ожидаемый результат: Все корректные даты должны проходить валидацию.
        """
        valid_dates = [
            '2024-01-15',             # Обычная дата
            '2024-02-20',             # Дата в феврале
            '2024-03-01',             # Первое число месяца
            '2024-12-31',             # Последний день года
            '2020-02-29'              # 29 февраля в високосный год
        ]
        
        for date in valid_dates:
            with self.subTest(date=date):
                self.assertTrue(validate_date(date),
                    f"Дата '{date}' должна считаться корректной")
    
    def test_valid_dates_boundary(self):
        """
        ТЕСТ №8: Проверка граничных значений дат.
        
        Ожидаемый результат: Даты на границах допустимых значений должны проходить валидацию.
        """
        valid_dates = [
            '2024-01-01',             # Первый день года
            '2024-12-31',             # Последний день года
            '2024-04-30',             # Последний день апреля (30 дней)
            '2024-02-28',             # Последний день февраля в невисокосный год
            '2020-02-29',             # 29 февраля в високосный год
            '2024-06-30'              # Последний день июня
        ]
        
        for date in valid_dates:
            with self.subTest(date=date):
                self.assertTrue(validate_date(date),
                    f"Дата '{date}' должна считаться корректной")
    
    def test_invalid_dates_wrong_format(self):
        """
        ТЕСТ №9: Проверка дат с неправильным форматом.
        
        Ожидаемый результат: Даты в неправильном формате НЕ должны проходить валидацию.
        """
        invalid_dates = [
            '15-01-2024',             # ДД-ММ-ГГГГ
            '01/15/2024',             # Месяц/день/год (американский формат)
            '2024/01/15',             # Слеши вместо дефисов
            '15.01.2024',             # Точки вместо дефисов
            '20240115',               # Без разделителей
            '2024-1-5',               # Без ведущих нулей
            '24-01-15'                # Год из двух цифр
        ]
        
        for date in invalid_dates:
            with self.subTest(date=date):
                self.assertFalse(validate_date(date),
                    f"Дата '{date}' должна считаться некорректной")
    
    def test_invalid_dates_impossible(self):
        """
        ТЕСТ №10: Проверка физически невозможных дат.
        
        Ожидаемый результат: Несуществующие даты НЕ должны проходить валидацию.
        """
        invalid_dates = [
            '2024-13-01',             # 13-й месяц (не существует)
            '2024-00-15',             # Нулевой месяц
            '2024-01-00',             # Нулевой день
            '2024-01-32',             # 32-й день января
            '2024-02-30',             # 30-е февраля
            '2024-04-31',             # 31-е апреля (в апреле 30 дней)
            '2024-02-29',             # 29 февраля в невисокосный год (2024 - високосный, но проверим)
            '2023-02-29'              # 29 февраля в невисокосный год (2023)
        ]
        
        for date in invalid_dates:
            with self.subTest(date=date):
                self.assertFalse(validate_date(date),
                    f"Дата '{date}' должна считаться некорректной")
    
    def test_invalid_dates_empty_or_text(self):
        """
        ТЕСТ №11: Проверка пустых и текстовых значений даты.
        
        Ожидаемый результат: Пустые строки и текстовые значения НЕ должны проходить валидацию.
        """
        invalid_dates = [
            '',                       # Пустая строка
            ' ',                      # Пробел
            'не дата',                # Текст на русском
            'not a date',             # Текст на английском
            'вчера',                  # Словесное описание
            None,                     # Значение None
            '2024-фев-15'             # Буквы в поле даты
        ]
        
        for date in invalid_dates:
            with self.subTest(date=date):
                # Пропускаем None, так как validate_date ожидает строку
                if date is not None:
                    self.assertFalse(validate_date(date),
                        f"Дата '{date}' должна считаться некорректной")


class TestPartnerFileOperations(unittest.TestCase):
    """
    Класс для тестирования операций с файлом данных партнёров.
    Использует временный файл для тестирования, чтобы не повредить реальные данные.
    """
    
    def setUp(self):
        """
        Метод, который выполняется перед каждым тестом.
        Создаёт временный файл и сохраняет оригинальный путь к файлу.
        """
        # Создаём временный файл для тестирования
        self.temp_file = tempfile.NamedTemporaryFile(mode='w', suffix='.json', delete=False)
        self.temp_file.close()
        
        # Сохраняем оригинальный путь к файлу партнёров
        self.original_partners_file = None
        if hasattr(__import__('routes_partners'), 'PARTNERS_FILE'):
            self.original_partners_file = __import__('routes_partners').PARTNERS_FILE
        
        # Подменяем путь к файлу на временный
        import routes_partners
        routes_partners.PARTNERS_FILE = self.temp_file.name
    
    def tearDown(self):
        """
        Метод, который выполняется после каждого теста.
        Удаляет временный файл и восстанавливает оригинальный путь.
        """
        # Удаляем временный файл
        if os.path.exists(self.temp_file.name):
            os.unlink(self.temp_file.name)
        
        # Восстанавливаем оригинальный путь к файлу
        if self.original_partners_file:
            import routes_partners
            routes_partners.PARTNERS_FILE = self.original_partners_file
    
    def test_load_partners_from_empty_file(self):
        """
        ТЕСТ №12: Проверка загрузки партнёров из несуществующего или пустого файла.
        
        Ожидаемый результат: Функция должна возвращать пустой список, а не выбрасывать ошибку.
        """
        # Удаляем файл, если он существует
        if os.path.exists(self.temp_file.name):
            os.unlink(self.temp_file.name)
        
        # Пересоздаём импорт для обновления настроек
        import routes_partners
        routes_partners.PARTNERS_FILE = self.temp_file.name
        
        # Загружаем партнёров из несуществующего файла
        partners = load_partners()
        
        # Проверяем, что вернулся пустой список
        self.assertEqual(partners, [], 
            "При отсутствии файла функция должна возвращать пустой список")
    
    def test_save_and_load_partners(self):
        """
        ТЕСТ №13: Проверка сохранения и последующей загрузки партнёров.
        
        Ожидаемый результат: Сохранённые данные должны совпадать с загруженными.
        """
        # Создаём тестовые данные
        test_partners = [
            {
                "id": 1,
                "name": "Тестовая компания 1",
                "phone": "+7(123)456-78-90",
                "description": "Это тестовое описание компании для проверки сохранения данных",
                "date": "2024-01-15"
            },
            {
                "id": 2,
                "name": "Тестовая компания 2",
                "phone": "89123456789",
                "description": "Вторая тестовая компания для проверки загрузки нескольких записей",
                "date": "2024-02-20"
            }
        ]
        
        # Сохраняем тестовые данные
        save_partners(test_partners)
        
        # Загружаем сохранённые данные
        loaded_partners = load_partners()
        
        # Проверяем, что данные совпадают
        self.assertEqual(len(loaded_partners), 2, 
            "Должно быть загружено 2 партнёра")
        self.assertEqual(loaded_partners[0]["name"], "Тестовая компания 1",
            "Название первого партнёра не совпадает")
        self.assertEqual(loaded_partners[1]["name"], "Тестовая компания 2",
            "Название второго партнёра не совпадает")
        self.assertEqual(loaded_partners[0]["phone"], "+7(123)456-78-90",
            "Телефон первого партнёра не совпадает")


if __name__ == '__main__':
    """
    Точка входа для запуска тестов.
    При запуске этого файла будут выполнены все тесты с выводом подробных результатов.
    """
    # Создаём тестовый набор
    test_loader = unittest.TestLoader()
    test_suite = test_loader.loadTestsFromTestCase(TestPhoneValidation)
    test_suite.addTests(test_loader.loadTestsFromTestCase(TestDateValidation))
    test_suite.addTests(test_loader.loadTestsFromTestCase(TestPartnerFileOperations))
    
    # Запускаем тесты с подробным выводом
    runner = unittest.TextTestRunner(verbosity=2)
    runner.run(test_suite)