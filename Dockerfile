# Use a base image with Java pre-installed
FROM openjdk:17

# Set the working directory inside the container
WORKDIR /app

# Copy the Java source code to the container
COPY . /app

# Compile the Java code
RUN javac HelloWorld.java

# Set the command to run the Java program
ENTRYPOINT ["java", "HelloWorld"]