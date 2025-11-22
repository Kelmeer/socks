FROM mitmproxy/mitmproxy:latest

# Bind на PORT из env (Render даёт $PORT)
EXPOSE $PORT

# Запуск в режиме reverse proxy (HTTP incoming → SOCKS5 upstream) или чистый socks, но с listen на $PORT
ENTRYPOINT ["sh", "-c", "mitmdump --mode socks5 --listen-host 0.0.0.0 --listen-port $PORT"]

COPY start.sh /
RUN chmod +x /start.sh
ENTRYPOINT ["/start.sh"]
