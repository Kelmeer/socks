FROM mitmproxy/mitmproxy:latest

# Render требует, чтобы хоть какой-то порт был открыт для health-check
# Делаем крошечный TCP-сервер на $PORT, который просто держит соединение живым
RUN pip install aiohttp

COPY health.py /health.py

# Основной SOCKS5 на 1080, а на $PORT (обычно 10000) — заглушка
CMD sh -c "mitmdump --mode socks5 --listen-host 0.0.0.0 --listen-port 1080 & python /health.py"

COPY start.sh /
RUN chmod +x /start.sh
ENTRYPOINT ["/start.sh"]
