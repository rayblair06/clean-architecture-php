# QoL commands

build:
	@docker-compose -f docker-compose.yml build

start:
	@docker-compose up -d --build app

migrate:
	@docker exec app php vendor/bin/phinx migrate

seed:
	@docker exec app php vendor/bin/phinx seed:run

composer-install:
	@docker-compose run --rm composer install

composer-update:
	@docker-compose run --rm composer update
