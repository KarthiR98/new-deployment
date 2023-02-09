# Use an official Java runtime as the base image
FROM openjdk:14-jdk-alpine

# Set the working directory in the container to /app
WORKDIR /app

# Copy the compiled JAR file from the host to the container
COPY target/my-app.jar /app/my-app.jar

# Run the JAR file when the container starts
CMD ["java", "-jar", "my-app.jar"]
