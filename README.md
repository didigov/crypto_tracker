# Crypto Tracker

Crypto Portfolio Tracker — это простой Python-скрипт для отслеживания стоимости вашего криптовалютного портфеля в реальном времени с использованием [CoinGecko API](https://www.coingecko.com/en/api).

## О проекте

Данный проект демонстрирует базовые навыки работы с API, обработки JSON-ответов и реализации расчетов. Программа позволяет:
- Получать текущие цены криптовалют.
- Вычислять стоимость каждого актива в портфеле.
- Определять общую стоимость портфеля.

Этот проект может служить основой для более сложных систем мониторинга и анализа криптовалютных инвестиций.

## Установка

1. **Клонируйте репозиторий:**

   ```bash
   git clone https://github.com/yourusername/crypto-portfolio-tracker.git
   cd crypto-portfolio-tracker
Создайте и активируйте виртуальное окружение (рекомендуется):
python3 -m venv venv
source venv/bin/activate      # Для Linux/macOS
# Для Windows:
# venv\Scripts\activate
Установите зависимости:
pip install -r requirements.txt
Использование
Настройка портфеля:

В файле main.py в функции main() задан пример портфеля:
python main.py
Результат:

Программа выведет стоимость каждого актива (количество * текущая цена) и общую стоимость портфеля.
Зависимости
Python 3.x
requests — для выполнения HTTP-запросов к API.
Все зависимости перечислены в файле requirements.txt.

API
Проект использует CoinGecko API для получения данных о ценах криптовалют. Для базового использования не требуется API-ключ.

Вклад
Если у вас есть идеи по улучшению проекта или вы хотите добавить новый функционал, вы можете создать pull request или открыть issue.

Лицензия
Этот проект распространяется под лицензией MIT. Подробнее см. в файле LICENSE.

---

## Как использовать

1. **Склонируйте репозиторий и установите зависимости**, как описано в разделе *Установка* README.
2. **Настройте портфолио** в файле `main.py`, изменив словарь `portfolio` под свои данные.
3. **Запустите скрипт** командой:

   ```bash
   python main.py
Пример вывода может выглядеть так:
Crypto Portfolio Tracker
========================
Bitcoin   : 0.5 шт. * $27,000.00 = $13,500.00
Ethereum  : 10 шт. * $1,800.00 = $18,000.00
Cardano   : 1000 шт. * $0.45 = $450.00
------------------------
Общая стоимость портфеля: $32, -  0.00
