# Use an official Eclipse Temurin JRE 17 base image
FROM eclipse-temurin:17-jre-jammy

WORKDIR /app

# Copy the compiled JAR file from the target folder
COPY target/*.jar app.jar

# Expose the application port (adjust if your app uses a different port)
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
