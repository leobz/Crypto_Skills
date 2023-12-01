## Docker compose backward compatibility to older versions
## More info: https://docs.docker.com/compose/#compose-v2-and-the-new-docker-compose-command
define DOCKER_COMPOSE
	@if which docker-compose  >/dev/null ; then docker-compose  $1; \
	else docker compose $1; fi;
endef

default: help

.PHONY: help
help: # Show help for each of the Makefile recipes.
	@grep -E '^[a-zA-Z0-9 -]+:.*#'  Makefile | sort | while read -r l; do printf "\033[1;32m$$(echo $$l | cut -f 1 -d':')\033[00m:$$(echo $$l | cut -f 2- -d'#')\n"; done

.PHONY: build
build: # Build docker image.
	docker build -t job_board:latest .
	docker tag job_board:latest leobz/job_board:latest

.PHONY: prod
prod: # Run app and db in containers
	$(call DOCKER_COMPOSE, up -d)

.PHONY: dev
dev: #Run app local and db in container
	$(call DOCKER_COMPOSE, -f docker-compose-dev.yml up -d)
	sh start_app.sh

.PHONY: stop
stop: # Terminates the execution of all containers
	$(call DOCKER_COMPOSE, down --remove-orphans)

.PHONY: clean
clean: # Terminates the execution of all containers + delete volumes
	$(call DOCKER_COMPOSE, -v down --remove-orphans)
	rm -r db-data/*

.PHONY: push-image
push-image: # Push image to registry
	docker tag job_board:latest leobz/job_board:latest
	docker push leobz/job_board:latest

.PHONY: pull-images
pull-images: # Pull images from registry
	docker pull leobz/job_board:latest

.PHONY: cp
cp: # Usage: make cp dir=<file_path> | Copy files from host to Rails container
	docker cp $(dir) job_board-job_board-1:/myapp/$(dir)

.PHONY: prod-console
prod-console: # Opens rails console in production container
	docker exec -it job_board-job_board-1 rails console

.PHONY: prod-bash
prod-bash: # Opens bash in production container
	docker exec -it job_board-job_board-1 /bin/bash

.PHONY: log-app
log-app: # Log ruby app container
	docker logs job_board-job_board-1 -f
