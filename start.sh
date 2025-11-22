#!/bin/bash
# Запускаем Dante и заглушку одновременно
sockd -f /etc/sockd.conf -D &
python /health.py
