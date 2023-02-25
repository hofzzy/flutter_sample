.PHONY: setup/backend
setup/backend:
	cd backend && docker network create flutter_sample_api_server

.PHONY: run/backend
run/backend:
	cd backend && docker compose up --force-recreate --build

.PHONY: run/mock_server
run/mock_server:
	cd native && dart run bin/mock_server.dart
