FROM alpine:latest

RUN apk add --no-cache curl && \
    curl -fsSL https://github.com/v2fly/fhs/releases/download/v4.40.0/fhs-linux-amd64.tar.gz | tar -xzf - -C /usr/local/bin && \
    mv /usr/local/bin/fhs /usr/local/bin/xray

COPY config.json /etc/xray/config.json

CMD ["xray", "run", "-config", "/etc/xray/config.json"]