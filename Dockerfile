FROM azul/zulu-openjdk:17.0.8

WORKDIR /app

COPY target/backendcore-0.2.0.jar app.jar

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]