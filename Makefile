package:
	./mvnw package -DskipTests
	docker build -t backendcore -f Dockerfile .

run:
	docker run --name backendcore -d -p 8080:8080 backendcore

test:
	./mvnw test

database:
	docker run --name postgresql -e POSTGRES_USER=root -e POSTGRES_PASSWORD=root -p 5432:5432 -v data:/var/lib/postgresql/data -d postgres:latest

database-clean:
	docker container stop postgresql
	docker container rm postgresql

clean:
	docker container stop backendcore
	docker container rm backendcore
	./mvnw clean

logs:
	docker container logs backendcore
