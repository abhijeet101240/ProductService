# Use a base image with JDK
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR (update the name if needed)
COPY target/*.jar app.jar

# Expose port (default for Spring Boot)
EXPOSE 8080

# Run the app
ENTRYPOINT ["java", "-jar", "app.jar"]
