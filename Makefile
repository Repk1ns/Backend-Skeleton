package:
	./mvnw package -DskipTests
	docker build -t backendcore -f Dockerfile .

run: package unit
	docker run -dp 127.0.0.1:8080:8080 backendcore