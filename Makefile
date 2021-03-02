clean:
	mvn clean

package:
	mvn package

build:
	docker build . -t demo-build:latest

run: build
	docker-compose up --build

push: run
	sh push.sh

cache-run:
	docker-compose up