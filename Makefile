# QoL commands

build:
	@docker-compose -f docker-compose.yml build

start:
	@docker-compose up -d --build app

migrate:
	@docker-compose run --rm composer migrate

seed:
	@docker-compose run --rm composer migrate:seed

composer-install:
	@docker-compose run --rm composer install

composer-update:
	@docker-compose run --rm composer update
