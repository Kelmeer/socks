FROM mitmproxy/mitmproxy:latest

# Устанавливаем aiohttp для заглушки
RUN pip install aiohttp

# Копируем наши файлы
COPY start.sh /start.sh
COPY health.py /health.py

RUN chmod +x /start.sh

# Запускаем и SOCKS5, и заглушку одновременно
CMD /start.sh & python /health.py
