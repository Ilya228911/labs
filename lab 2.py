import requests

# API Key берем с этого сайта OpenWeatherMap
API_KEY = "56ddc269a4db6715ce31dfbcad7b18c0"

# Название города и код страны
city_name = "Moscow"
country_code = "RU"

# Ссылка для запросов
url = f"http://api.openweathermap.org/data/2.5/weather?q={city_name},{country_code}&appid={API_KEY}"

# Выполняем API запрос
response = requests.get(url)

# Парсинг данных JSON из ответа API
data = response.json()

# Извлечение скорости ветра и видимости из данных ( условие лабораторной работы )
wind_speed = data["wind"]["speed"]
visibility = data["visibility"]

# Выводим скорость ветра и видимость
print(f"Wind Speed: {wind_speed} m/s")
print(f"Visibility: {visibility} meters")