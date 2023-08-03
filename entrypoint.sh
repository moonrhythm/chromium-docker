#!/bin/sh

port="${PORT:=9222}"

chromium \
	--headless \
	--no-sandbox \
	--disable-software-rasterizer \
	--disable-dev-shm-usage \
	--remote-debugging-address=0.0.0.0 \
	--remote-debugging-port=$port
