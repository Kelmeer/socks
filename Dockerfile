FROM alpine:latest

RUN apk add --no-cache dante-server python3 py3-pip bash
RUN pip3 install aiohttp

COPY sockd.conf /etc/sockd.conf
COPY start.sh /start.sh
COPY health.py /health.py

RUN chmod +x /start.sh

EXPOSE 1081

CMD ["/start.sh"]
