#!/bin/bash
# Ждём секунду, чтоб health.py успел подняться (на всякий случай)
sleep 2

mitmdump --mode socks5 \
  --listen-host 0.0.0.0 \
  --listen-port 1080 \
  --set socks_proxy_auth=require:qwe:321 \
  --quiet
