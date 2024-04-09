# Use the official OpenJDK 17 image as the base image
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the packaged jar file into the container
COPY build/libs/Gateway-0.0.1-SNAPSHOT.jar /app/Gateway-0.0.1-SNAPSHOT.jar

# Set environment variables

# Expose the port that your app runs on
EXPOSE 8084

# Run the jar file
CMD ["java", "-jar", "Gateway-0.0.1-SNAPSHOT.jar"]
