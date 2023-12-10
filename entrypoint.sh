#!/bin/sh

port="${PORT:=9222}"

chromium \
	--headless \
	--no-sandbox \
	--disable-software-rasterizer \
	--disable-dev-shm-usage \
	--remote-debugging-address=:: \
	--remote-debugging-port=$port
