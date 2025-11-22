#!/bin/bash
sockd -f /etc/sockd.conf -N 4 &
python3 /health.py
