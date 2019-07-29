.PHONY: all build push deploy run stop

all: build push deploy

build:
	docker build -t andilabs/myproject:latest -f config/app/Dockerfile .

push:
	docker push andilabs/myproject:latest

deploy:
	eb deploy

run:
	docker-compose up -d

stop:
	docker-compose down
