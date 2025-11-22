#!/bin/bash
mitmdump --mode socks5 \
  --listen-host 0.0.0.0 \
  --listen-port 1080 \
  --set socks_proxy_auth=require:user:4958
