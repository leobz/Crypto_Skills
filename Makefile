.PHONY: build
build: # Build docker image.
	docker build -t job_board:latest .