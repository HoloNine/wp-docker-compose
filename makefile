# Makefile for Docker and Docker Compose

# Default target
.PHONY: up
up:
	docker compose up -d

.PHONY: down
down:
	docker compose down -v

.PHONY: fix
fix:
	sudo chcon -Rt svirt_sandbox_file_t ./public
	sudo chown -R $$USER:$$USER ./public
	sudo chmod -R 755 ./public
	sudo find ./public -type f -exec chmod 644 {} \;
