# Use official Java runtime as base image
FROM openjdk:17-jdk-slim

# Set work directory
WORKDIR /app

# Copy the built jar from Maven target folder
COPY target/calculator-1.0.0.jar app.jar

# Expose port 8080
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
