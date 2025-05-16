# Use the official OpenJDK base image
FROM eclipse-temurin:20-jdk-alpine AS build

# Set the working directory
WORKDIR /app

# Copy the project files
COPY . .

# Set executable permissions for the Maven wrapper
RUN chmod +x ./mvnw

# Build the application
RUN ./mvnw clean package -DskipTests

# Use a smaller image for the final container
FROM eclipse-temurin:20-jre-alpine

# Set the working directory
WORKDIR /app

# Copy the built jar file
COPY --from=build /app/target/*.jar app.jar

# Expose the default Spring Boot port
EXPOSE 8080

ENV SPRING_PROFILES_ACTIVE=local

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
