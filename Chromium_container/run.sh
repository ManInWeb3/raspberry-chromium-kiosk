#!/bin/bash

docker run -d \
	--name chromium-kiosk \
	-p 5900:5900 \
	--shm-size 256M \
	-v chromium_profile:/home/kiosk/.config/chromium \
	--restart unless-stopped \
	docker-chromium-kiosk



