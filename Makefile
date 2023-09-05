# process run during github actions
ci: deps-install test clean

# process to install, tidy, and upgrade depdencies
deps: deps-install deps-upgrade deps-tidy

# install dependencies
deps-install:
	go get .

# clean up the dependency files
deps-tidy:
	go mod tidy

deps-upgrade:
	go get -u ./...

# run lint using golangci-linters
lint:
	golangci-lint run

# run tests
test:
	go test -v -cover ./...
