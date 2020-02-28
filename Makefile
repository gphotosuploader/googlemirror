.DEFAULT_GOAL := help

# go source files, ignore vendor directory
PKGS = $(shell go list ./... | grep -v /vendor)
COVERAGE_FILE ?= coverage.txt

# Get first path on multiple GOPATH environments
GOPATH := $(shell echo ${GOPATH} | cut -d: -f1)

.PHONY: test
test: ## Run all the tests
	@echo "--> Running tests..."
	@go test -race -failfast -timeout=30s $(PKGS)

build: ## Build the app
	@echo "--> Building..."
	@go build ./...

.PHONY: clean
clean: ## Clean all built artifacts
	@echo "--> Cleaning all built artifacts..."
	@rm -f $(COVERAGE_FILE)

.PHONY: ci
ci: test build ## Run all the tests and build

.PHONY: help
help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
