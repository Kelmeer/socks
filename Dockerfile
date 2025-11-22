FROM alpine:latest

# Устанавливаем Dante SOCKS5 сервер
RUN apk add --no-cache dante-server bash

# Копируем конфиг
COPY sockd.conf /etc/sockd.conf
COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 1081

CMD ["/start.sh"]
