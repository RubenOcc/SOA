.DEFAULT_GOAL := help
.PHONY : resources

include .env


# Variables

BRANCH ?= develop


# Clone Section

set-origin-project: 
	@if [ -d $(PROJECT_PATH)$(PROJECT) ]; then \
		cd $(PROJECT_PATH)$(PROJECT) && \
		git remote set-url origin ssh://git@repo.ssh.neoauto.local/neoaut/$(PROJECT).git && \
		git remote -v; \
	else \
		echo "----------------------------------------------------------------"; \
		echo "Directory $(PROJECT_PATH)$(PROJECT) does not exist, skipping..."; \
		echo "----------------------------------------------------------------"; \
	fi

set-origin: ##@Bitbucket set origin to bitbucket datacenter make set-origin
	@make set-origin-project PROJECT=gnr-node
	@make set-origin-project PROJECT=neoauto-cdk-modules
	@make set-origin-project PROJECT=neoauto-core
	@make set-origin-project PROJECT=neoauto-function-asyncprocess
	@make set-origin-project PROJECT=neoauto-function-edgeresponse_cde
	@make set-origin-project PROJECT=neoauto-function-pdf
	@make set-origin-project PROJECT=neoauto-function-resizer
	@make set-origin-project PROJECT=neoauto-library-common
	@make set-origin-project PROJECT=neoauto-microservice-activities
	@make set-origin-project PROJECT=neoauto-microservice-advertisements
	@make set-origin-project PROJECT=neoauto-microservice-affiliated
	@make set-origin-project PROJECT=neoauto-microservice-analytics
	@make set-origin-project PROJECT=neoauto-microservice-authorizations
	@make set-origin-project PROJECT=neoauto-microservice-client-gateway
	@make set-origin-project PROJECT=neoauto-microservice-concessionaires
	@make set-origin-project PROJECT=neoauto-microservice-finance
	@make set-origin-project PROJECT=neoauto-microservice-gateway
	@make set-origin-project PROJECT=neoauto-microservice-identities
	@make set-origin-project PROJECT=neoauto-microservice-leads
	@make set-origin-project PROJECT=neoauto-microservice-natural-people
	@make set-origin-project PROJECT=neoauto-microservice-payments
	@make set-origin-project PROJECT=neoauto-microservice-pixel
	@make set-origin-project PROJECT=neoauto-microservice-search
	@make set-origin-project PROJECT=neoauto-microservice-statistic
	@make set-origin-project PROJECT=neoauto-module-billing
	@make set-origin-project PROJECT=neoauto-module-concessionaire
	@make set-origin-project PROJECT=neoauto-module-identity
	@make set-origin-project PROJECT=neoauto-module-reseller
	@make set-origin-project PROJECT=neoauto-module-search
	@make set-origin-project PROJECT=neoauto-ms-fake
	@make set-origin-project PROJECT=neoauto-scheduled-dumpsc
	@make set-origin-project PROJECT=neoauto-script-branch
	@make set-origin-project PROJECT=neoauto-serverless-mailer
	@make set-origin-project PROJECT=neoauto-solr
	@make set-origin-project PROJECT=neoauto-spa-account-concessionaire
	@make set-origin-project PROJECT=neoauto-spa-account-reseller
	@make set-origin-project PROJECT=neoauto-spa-dashboard
	@make set-origin-project PROJECT=neoauto-spa-management
	@make set-origin-project PROJECT=neoauto-spa-template
	@make set-origin-project PROJECT=neoauto-spa-vehicle-dashboard
	@make set-origin-project PROJECT=neoauto-ssr-management
	@make set-origin-project PROJECT=neoauto-ssr-mapfre
	@make set-origin-project PROJECT=neoauto-ssr-santander
	@make set-origin-project PROJECT=neoauto-ssr-site
	@make set-origin-project PROJECT=neoauto-ssr-template
	@make set-origin-project PROJECT=neoauto-ssr-used
	@make set-origin-project PROJECT=neoauto-ssr-web
	@make set-origin-project PROJECT=neoauto-vehiclepricing-dump
	@make set-origin-project PROJECT=neokit-core
	@make set-origin-project PROJECT=strapi-cms

clone-project: ##@Clone Clone specific project and set branch  PROJECT=neoauto-microservice-finance BRANC=develop
	cd $(PROJECT_PATH) && \
	git clone git@github.com:ronaldfox2015/$(PROJECT).git && \
	cd $(PROJECT) && \
	git fetch origin && \
	git checkout $(BRANCH)

clone: ##@Clone Clone all projects
	@make clone-project PROJECT=proyect-microservice-demo
	@make clone-project PROJECT=solr



# Build Section

build-project: ##@Build Build specific project  PROJECT=neoauto-microservice-finance
	cd $(PROJECT_PATH)$(PROJECT) && \
	make build && \
	make install || echo "Skipping make install because it is not found" && \
	make migrate APP_ENV=local || echo "Skipping make migrate because it is not found" && \
	make up

build: ##@Build Build all projects
	@make build-project PROJECT=neoauto-microservice-statistic
	@make build-project PROJECT=neoauto-solr
	@make build-project PROJECT=neoauto-web
	@make build-project PROJECT=neoauto-admin

# Update Section
update-project: ##@Update Update specific project and set branch  PROJECT=neoauto-microservice-activities BRACH=develop
	cd $(PROJECT_PATH)$(PROJECT) && \
	git stash -u && \
	git fetch origin && \
	git checkout $(BRANCH) && \
	git pull origin $(BRANCH) && \
	make sync-container-config ENV=local CONFIG_PATH=dev ACCOUNT_ENV=dev && \
	make migrate || echo "Skipping make migrate because it is not found"

update: ##@Update Update all projects
	@make update-project PROJECT=neo-local-infrastructure
	@make update-project PROJECT=neoauto-microservice-activities
	@make update-project PROJECT=neoauto-microservice-advertisements
	@make update-project PROJECT=neoauto-microservice-affiliated
	@make update-project PROJECT=neoauto-microservice-analytics
	@make update-project PROJECT=neoauto-microservice-authorizations
	@make update-project PROJECT=neoauto-microservice-client-gateway
	@make update-project PROJECT=neoauto-microservice-concessionaires
	@make update-project PROJECT=neoauto-microservice-finance
	@make update-project PROJECT=neoauto-microservice-gateway
	@make update-project PROJECT=neoauto-microservice-identities
	@make update-project PROJECT=neoauto-microservice-leads
	@make update-project PROJECT=neoauto-microservice-listings
	@make update-project PROJECT=neoauto-microservice-natural-people
	@make update-project PROJECT=neoauto-microservice-payments
	@make update-project PROJECT=neoauto-microservice-resellers
	@make update-project PROJECT=neoauto-microservice-search
	@make update-project PROJECT=neoauto-microservice-statistic
	@make update-project PROJECT=neoauto-solr
	@make update-project PROJECT=neoauto-web
	@make update-project PROJECT=neoauto-admin BRANCH=dev


# Start Section

start-project: ##@Start Start specific project
	@cd $(PROJECT_PATH)$(PROJECT) && \
	make up

start-infrastructure: ##@Start Start local infrastructure
	@make start-project PROJECT=utp-local-infraestructure

start-services: ##@Start Start all services
	@make start-project PROJECT=neoauto-microservice-advertisements

start-portal: ##@Start Start portal
	@make start-project PROJECT=siri-web

solr-data-import: ##@Start Run Solr data import
	cd $(PROJECT_PATH)neoauto-solr && \
	make data-import-run 

up: ##@Global Start all containers
	@make start-infrastructure
	@make start-services
	@make start-portal
	@make solr-data-import

down: ##@Global Stop all containers
	@docker rm -f $(shell docker ps -aq)

# Help Section

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
