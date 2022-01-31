USER_ID=$(shell id -u)

up:
	docker-compose -f docker-compose/docker-compose.yaml -f docker-compose/docker-compose.app.yaml up django

build:
	docker-compose -f docker-compose/docker-compose.yaml -f docker-compose/docker-compose.app.yaml build django

bash:
	docker exec -u ${USER_ID} -it django bash

migrate:
	docker exec -u ${USER_ID} -it django python manage.py migrate
