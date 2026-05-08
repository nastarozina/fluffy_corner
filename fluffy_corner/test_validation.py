import unittest
import validation


class TestValidation(unittest.TestCase):

    # =========================
    # Тесты проверки телефона
    # =========================

    # Проверка корректного телефона
    def test_valid_phone(self):
        self.assertTrue(validation.validate_phone("+79992108837"))

    # Телефон без символа "+"
    def test_phone_without_plus(self):
        self.assertFalse(validation.validate_phone("79992108837"))

    # Телефон содержит буквы
    def test_phone_with_letters(self):
        self.assertFalse(validation.validate_phone("+799921а08837"))

    # Пустой телефон
    def test_empty_phone(self):
        self.assertFalse(validation.validate_phone(""))

    # Слишком короткий телефон
    def test_short_phone(self):
        self.assertFalse(validation.validate_phone("+7999"))

    # Слишком длинный телефон
    def test_long_phone(self):
        self.assertFalse(validation.validate_phone("+79992108837777777777777"))


    # =========================
    # Тесты проверки имени
    # =========================

    # Корректное имя
    def test_valid_name(self):
        self.assertTrue(validation.validate_name("Анастасия"))

    # Имя содержит цифры
    def test_name_with_digits(self):
        self.assertFalse(validation.validate_name("Анастасия123"))

    # Имя содержит латинские буквы
    def test_name_with_latin_letters(self):
        self.assertFalse(validation.validate_name("Анастасиr"))

    # Имя содержит спецсимволы
    def test_name_with_special_symbols(self):
        self.assertFalse(validation.validate_name("Анаст@сия"))

    # Пустое имя
    def test_empty_name(self):
        self.assertFalse(validation.validate_name(""))

    # Слишком короткое имя
    def test_short_name(self):
        self.assertFalse(validation.validate_name("А"))

    # Слишком длинное имя
    def test_long_name(self):
        self.assertFalse(validation.validate_name("Анастасияяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяя"))


    # =========================
    # Тесты проверки деятельности
    # =========================

    # Корректное описание деятельности
    def test_valid_activity(self):
        self.assertTrue(validation.validate_activity("Оказывает финансовую помощь и участвует в сборах средств"))

    # Описание состоит только из цифр
    def test_activity_only_digits(self):
        self.assertFalse(validation.validate_activity("22222299990000111"))

    # Описание состоит из спецсимволов
    def test_activity_only_special_symbols(self):
        self.assertFalse(validation.validate_activity("@@@@;;;!!!!__---%%%%%"))

    # Описание содержит цифры и спецсимволы без русских букв
    def test_activity_without_russian_letters(self):
        self.assertFalse(validation.validate_activity("222222 9999  ;;;; ))))"))

    # Описание содержит латинские буквы
    def test_activity_with_latin_letters(self):
        self.assertFalse(validation.validate_activity("Оказывает fинансовую помощь и участвует в сборах sредств"))

    # Пустое описание
    def test_empty_activity(self):
        self.assertFalse(validation.validate_activity(""))

    # Слишком короткое описание
    def test_short_activity(self):
        self.assertFalse(validation.validate_activity("привет"))

    # Слишком длинное описание
    def test_long_activity(self):
        self.assertFalse(
            validation.validate_activity(
                "Тёплый весенний вечер медленно опускался на город. "
                "В окнах домов зажигался мягкий свет, а по улицам неспешно "
                "проходили люди, наслаждаясь свежим воздухом. Где-то вдали "
                "звучала музыка, смешиваясь с шумом деревьев и редкими "
                "голосами прохожих, создавая спокойную и уютную атмосферу."
            )
        )


if __name__ == "__main__":
    unittest.main()