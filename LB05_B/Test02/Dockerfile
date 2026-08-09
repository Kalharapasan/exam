# Use Java 17 as the base image
FROM eclipse-temurin:17-jdk

# Set the working directory
WORKDIR /app

# Copy Maven project files
COPY pom.xml .

# Copy source code
COPY src ./src

# Install Maven
RUN apt-get update && \
    apt-get install -y maven && \
    rm -rf /var/lib/apt/lists/*

# Build the Spring Boot application
RUN mvn clean package -DskipTests

# Expose application port
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "target/java-docker-app-1.0.0.jar"]
