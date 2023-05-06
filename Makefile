default: help

.PHONY: help
help: # Show help for each of the Makefile recipes.
	@grep -E '^[a-zA-Z0-9 -]+:.*#'  Makefile | sort | while read -r l; do printf "\033[1;32m$$(echo $$l | cut -f 1 -d':')\033[00m:$$(echo $$l | cut -f 2- -d'#')\n"; done

.PHONY: build
build: # Build docker image.
	docker build -t job_board:latest .

.PHONY: prod
prod: # Run app and db in containers
	docker compose up

.PHONY: dev
dev: #Run app local and db in container
	docker compose -f docker-compose-dev.yml up -d
	sh start_app.sh
	docker compose stop

.PHONY: stop
stop: # Terminates the execution of all containers
	docker compose down --remove-orphans

.PHONY: clean
clean: # Terminates the execution of all containers + delete volumes
	docker compose down -v --remove-orphans
	rm -r db-data/*