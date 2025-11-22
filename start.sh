#!/bin/bash
sockd -f /etc/sockd.conf -D &
python3 /health.py
