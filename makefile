# Makefile for Docker and Docker Compose

# Default target
.PHONY: up
up:
	docker compose up -d

.PHONY: down
down:
	docker compose down -v
