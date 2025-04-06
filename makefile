# Makefile for Docker and Docker Compose

# Default target
.PHONY: up
up:
	docker compose up -d

.PHONY: down
down:
	docker compose down -v

.PHONY: perms
perms:
	sudo chcon -Rt svirt_sandbox_file_t ./public
	sudo chown -R $$USER:$$USER ./public
	chmod -R u+rw ./public
