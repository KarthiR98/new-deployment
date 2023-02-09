# Use an official Java runtime as the base image
FROM openjdk:14-jdk-alpine

# Set the working directory in the container to /app
WORKDIR /app

# Copy the Java file from the host to the container
COPY HelloWorld.java /app/HelloWorld.java

# Compile the Java file
RUN javac HelloWorld.java

# Run the program when the container starts
CMD ["java", "HelloWorld"]
