tests:
	docker-compose -f docker-compose.yml build
	docker-compose -f docker-compose.yml up --abort-on-container-exit

dev-setup:
	docker-compose run --rm app make setup

dev:
	docker compose up

# https://hub.docker.com/repositories/vladvysth
test-image:
	docker run -p 8080:8080 -e NODE_ENV=development vladvysth/hexlet-1:latest make dev

ci:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app