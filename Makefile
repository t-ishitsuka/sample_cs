.PHONY: help build
.DEFAULT_GOAL := help

##################################################
# Make file
##################################################

help:	## Show options
	@echo ""
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
	@echo ""

##################################################
# Docker
##################################################

build:	## Build docker container with no cache
	docker compose build --no-cache

up:		## Start docker contariner
	docker compose up -d

stop:	## Stop docker contariner
	docker compose stop

app:	## Connect app contariner
	docker compose exec app bash
