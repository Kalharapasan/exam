# Use Java 17 as the base image
FROM eclipse-temurin:17-jdk

# Set the working directory
WORKDIR /app

# Copy Java source code to the container
COPY StudentApp.java /app

# Compile the Java source code
RUN javac StudentApp.java

# Run the Java application
CMD ["java", "StudentApp"]

