# Use Eclipse Temurin OpenJDK 17 base image
FROM eclipse-temurin:17-jdk-alpine

# Set working directory inside the container
WORKDIR /app

# Copy the jar file built by Maven
COPY target/*.jar app.jar

# Expose port (match the one your Spring Boot app runs on, usually 8080)
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]