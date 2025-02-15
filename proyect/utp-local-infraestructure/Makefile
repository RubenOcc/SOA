.DEFAULT_GOAL := help
.PHONY: venv
.EXPORT_ALL_VARIABLES:

include .env

## DEV ##
TAG_MYSQL 		= mysql

## RESULT_VARS ##
LOCAL_REGISTRY_HOST = local.neo.registry
LOCAL_REGISTRY_PORT = 5000
DOCKER_NETWORK 		= utp_network
PROJECT_NAME 		= services
IMAGE_MYSQL			= ${PROJECT_NAME}:${TAG_MYSQL}
IMAGE_MYSQL8		= ${PROJECT_NAME}:${TAG_MYSQL}8
MYSQL_CONTAINER 	= services_mysql
DATABASES			= db_siri_job db_siri_talent_finder

add_local_registry_host: ## added the ip for local registery (local.neo.registry), use me with: make registery ip=1.1.1.1
	@if [ -z "${IP}" ]; then (echo "Please set the ip in to 'IP' variable. e.g. IP=172.18.60.119" && exit 1); fi
	$(eval ETC_HOSTS := /etc/hosts)
	$(eval HOSTS_LINE := '$(IP)\t$(LOCAL_REGISTRY_HOST)')
	@if [ -n "$$(grep $(LOCAL_REGISTRY_HOST) /etc/hosts)" ]; \
		then \
			sudo sed -i "/$(LOCAL_REGISTRY_HOST)/ s/.*/$(IP)\t$(LOCAL_REGISTRY_HOST)/g" /etc/hosts; \
			echo "$(LOCAL_REGISTRY_HOST) already exists : $$(grep $(LOCAL_REGISTRY_HOST) $(ETC_HOSTS))"; \
		else \
			echo "Adding $(LOCAL_REGISTRY_HOST) to your $(ETC_HOSTS)"; \
			sudo -- sh -c -e "echo $(HOSTS_LINE) >> /etc/hosts"; \
			if [ -n "$$(grep $(LOCAL_REGISTRY_HOST) /etc/hosts)" ];\
				then \
					echo "$(LOCAL_REGISTRY_HOST) was added succesfully \n $$(grep $(LOCAL_REGISTRY_HOST) /etc/hosts)"; \
				else \
					echo "Failed to Add $(LOCAL_REGISTRY_HOST), Try again!"; \
			fi \
	fi

add_local_domain:
	@if [ -z "${HOST_NAME}" ]; then (echo "Please set the ip in to 'HOST_NAME' variable. e.g. HOST_NAME=local.urbania.ec" && exit 1); fi
	$(eval ETC_HOSTS := /etc/hosts)
	$(eval IP := 127.0.0.1)
	$(eval HOSTS_LINE := '$(IP)\t$(HOST_NAME)')
	@if [ -n "$$(grep $(HOST_NAME) /etc/hosts)" ]; \
		then \
			echo "$(HOST_NAME) already exists : $$(grep $(HOST_NAME) $(ETC_HOSTS))"; \
		else \
			echo "Adding $(HOST_NAME) to your $(ETC_HOSTS)"; \
			sudo -- sh -c -e "echo $(HOSTS_LINE) >> /etc/hosts"; \
			if [ -n "$$(grep $(HOST_NAME) /etc/hosts)" ];\
				then \
					echo "$(HOST_NAME) was added succesfully \n $$(grep $(HOST_NAME) /etc/hosts)"; \
				else \
					echo "Failed to Add $(HOST_NAME), Try again!"; \
			fi \
	fi

pull: ## pull docker IMAGEs from Cesar Registery, use me with: make pull
	docker pull $(LOCAL_REGISTRY_HOST):$(LOCAL_REGISTRY_PORT)/mongo2.6
	docker tag $(LOCAL_REGISTRY_HOST):$(LOCAL_REGISTRY_PORT)/mongo2.6 mongo2.6
	docker rmi $(LOCAL_REGISTRY_HOST):$(LOCAL_REGISTRY_PORT)/mongo2.6

push: ## push docker image, use me with: make pull
	docker tag $(IMAGE) $(LOCAL_REGISTRY_HOST):$(LOCAL_REGISTRY_PORT)/$(IMAGE)
	docker push $(LOCAL_REGISTRY_HOST):$(LOCAL_REGISTRY_PORT)/$(IMAGE)
	docker rmi $(LOCAL_REGISTRY_HOST):$(LOCAL_REGISTRY_PORT)/$(IMAGE)

sync-container-config: ## Sync DB and configs from S3
	@make sync-db

build: ## build IMAGE, use me with: make build
	docker build -f docker/mysql8/Dockerfile -t ${IMAGE_MYSQL8} docker/mysql8/

up_registry: ## up local docker registry
	docker compose -f docker-compose.registry.yml up -d

stop_registry:
	docker compose -f docker-compose.registry.yml stop

up_lb:
	DOCKER_NETWORK=$(DOCKER_NETWORK) \
	docker compose -f docker-compose.lb.yml up -d

down_lb:
	@docker rm -f balancer

up: ## up docker containers, use me with: make up
	make verify-network &> /dev/null
	make up_lb
	DOCKER_NETWORK=$(DOCKER_NETWORK) \
	docker compose -p $(PROJECT_NAME) up -d

down: ## Stops and removes the docker containers, use me with: make down
	@docker rm -f services_mysql8
	@docker rm -f services_redis

sync-db: ## Sync db files from S3
	aws s3 sync s3://infraestructura.neoauto.local/neoauto/database/restore/${PROJECT_NAME}/ docker/mysql8/initdb/ --exclude "version/*" --profile dev

backup-db:
	$(eval DATE = `date +'%Y%m%d'`)
	$(eval VERSION := none)

	@mkdir -p ./tmp
	@for dbname in $(DATABASES); do \
		echo "DUMP: $$dbname"; \
		docker exec -it $(PROJECT_NAME)_mysql8 sh -c "mysqldump --triggers --routines --databases $$dbname" > ./tmp/$$dbname.sql; \
	done
	@sed -i 's/DEFINER=[^ ]* / /' ./tmp/*.sql



clear-db:
	@for dbname in $(DATABASES); do \
		echo "DROP: $$dbname"; \
		docker exec -e MYSQL_PWD=123456 -i $(PROJECT_NAME)_mysql8 mysql -uroot -e "DROP DATABASE IF EXISTS $$dbname"; \
	done

restore-db:
	@cd docker/mysql8/initdb && \
		find -iname '*.sql' \
		-exec docker exec -e MYSQL_PWD=123456 $(PROJECT_NAME)_mysql8 \
			sh -c 'mysql -uroot < docker-entrypoint-initdb.d/{}' \; \
		-exec echo {} \;

up-db:
	docker run --rm -d \
		--name $(PROJECT_NAME)_mysql8 \
		-p 3306:3306 \
		-e "MYSQL_ROOT_PASSWORD=123456" \
		-v $$PWD/data8/mysql:/var/lib/mysql \
		-v $$PWD/docker/mysql8/initdb:/docker-entrypoint-initdb.d \
		--net ${DOCKER_NETWORK} \
		$(IMAGE_MYSQL)

verify-network:
	@if [ -z $$(docker network ls | grep $(DOCKER_NETWORK) | awk '{print $$2}') ]; then\
		(docker network create $(DOCKER_NETWORK));\
	fi

GREEN  := $(shell tput -Txterm setaf 2)
WHITE  := $(shell tput -Txterm setaf 7)
YELLOW := $(shell tput -Txterm setaf 3)
RESET  := $(shell tput -Txterm sgr0)

HELP_FUN = \
	%help; \
	while(<>) { push @{$$help{$$2 // 'options'}}, [$$1, $$3] if /^([a-zA-Z\-]+)\s*:.*\#\#(?:@([a-zA-Z\-]+))?\s(.*)$$/ }; \
	print "Usage: make [target]\n\n"; \
	for (sort keys %help) { \
		print "${WHITE}$$_:$(RESET)\n"; \
		for (@{$$help{$$_}}) { \
			$$sep = " " x (32 - length $$_->[0]); \
			print "  ${YELLOW}$$_->[0]$(RESET)$$sep${GREEN}$$_->[1]$(RESET)\n"; \
		}; \
		print "\n"; \
	}

help:
	@perl -e '$(HELP_FUN)' $(MAKEFILE_LIST)
