#SHELL := /bin/bash

APP_NAME=my-app
build: ## Build the container
	docker build -t $(APP_NAME) .
run:
	docker run  \
		   -v ~/.cache/torch/hub/checkpoints/:/root/.cache/torch/hub/checkpoints/ \
		   --publish 5000:5000 \
		   $(APP_NAME) \
#
stop:
	docker stop $(APP_NAME); docker rm $(APP_NAME)
