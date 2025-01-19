#grouping all the Make
setup:
	@make build
	@make up
#@make composer-update
build:
	docker compose build --no-cache --force-rm
stop:
	docker compose stop
up:
	docker compose up -d

start:
	docker compose up -d
	npm run dev

	

#this is to give  a string to compose update  in other to update the vvendor in cases of pulling fforom git hub

#check list of containers running in docker
see_container:
	docker ps
#access laravel installed folder

access_htdocs:
	docker exec -it htdocs bash

composer-update:
	docker exec htdocs bash -c "composer update"
#ecommerce above neabs ecommerce for the docker conotainer #container_name

