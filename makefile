SHELL := /bin/bash

help:
	@echo ""
	@echo "Commands:"
	@echo "  server   Rodar o blog"
	@echo "  publish  Fazer a publicação do blog"

server:
	hugo server

publish:
	sh ./deploy.sh