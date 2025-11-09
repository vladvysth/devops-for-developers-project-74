tests:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

test-image:
	# https://hub.docker.com/repositories/vladvysth
	docker run -p 8080:8080 -e NODE_ENV=development vladvysth/hexlet-1:latest make dev