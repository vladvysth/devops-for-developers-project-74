tests:
	docker-compose -f docker-compose.yml build
	docker-compose -f docker-compose.yml up --abort-on-container-exit

dev-setup:
	docker-compose run --rm app make setup

dev:
	docker compose up

ci:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app