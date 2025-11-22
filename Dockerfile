FROM mitmproxy/mitmproxy:latest

# Открываем порт для SOCKS5 и для обычного прокси
EXPOSE 8080 1080

# Запускаем в режиме SOCKS5 + HTTP прокси одновременно
ENTRYPOINT ["mitmdump", "--mode", "socks5", "--listen-host", "0.0.0.0", "--listen-port", "1080", "--set", "upstream=http://0.0.0.0:8080"]
