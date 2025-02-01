#!/usr/bin/env python3
"""
Crypto Portfolio Tracker

Этот скрипт получает актуальные цены криптовалют с CoinGecko API и рассчитывает стоимость
портфеля, заданного пользователем.
"""

import requests

# URL для получения цены с CoinGecko
COINGECKO_API_URL = "https://api.coingecko.com/api/v3/simple/price"

def get_price(coin_id, currency="usd"):
    """
    Получает текущую цену криптовалюты с CoinGecko.

    :param coin_id: идентификатор криптовалюты в системе CoinGecko (например, "bitcoin")
    :param currency: валюта для цены (по умолчанию "usd")
    :return: цена криптовалюты или None в случае ошибки
    """
    params = {
        'ids': coin_id,
        'vs_currencies': currency
    }
    try:
        response = requests.get(COINGECKO_API_URL, params=params)
        response.raise_for_status()  # выбрасывает исключение, если статус ответа не 200
        data = response.json()
        if coin_id in data and currency in data[coin_id]:
            return data[coin_id][currency]
        else:
            print(f"Предупреждение: Нет данных о цене для {coin_id} в валюте {currency}.")
            return None
    except requests.exceptions.RequestException as e:
        print(f"Ошибка при получении данных для {coin_id}: {e}")
        return None

def display_portfolio(portfolio, currency="usd"):
    """
    Выводит информацию о портфеле: стоимость каждого актива и общую стоимость.

    :param portfolio: словарь, где ключ — идентификатор криптовалюты, значение — количество
    :param currency: валюта для расчёта стоимости
    """
    total_value = 0.0
    print("Crypto Portfolio Tracker")
    print("========================")
    for coin, amount in portfolio.items():
        price = get_price(coin, currency)
        if price is None:
            print(f"Не удалось получить цену для {coin}.")
            continue
        value = price * amount
        total_value += value
        print(f"{coin.title():<10}: {amount} шт. * ${price:,.2f} = ${value:,.2f}")
    print("------------------------")
    print(f"Общая стоимость портфеля: ${total_value:,.2f}")

def main():
    # Пример портфеля пользователя.
    # Для получения актуальных цен идентификаторы криптовалют должны соответствовать CoinGecko.
    portfolio = {
        "bitcoin": 0.5,
        "ethereum": 10,
        "cardano": 1000,
    }
    display_portfolio(portfolio, "usd")

if __name__ == '__main__':
    main()

