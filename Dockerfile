# Use a minimal base image
FROM alpine:latest

# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Create a simple script that prints "Hello, World!"
RUN echo 'echo "Hello, World!"' > hello.sh

# Copy the current directory contents into the container at /app
COPY hello.py .

# Make the script executable
RUN chmod +x hello.sh

# Run the script when the container launches
CMD ["./hello.sh"]

# Run the Python script when the container launches
CMD ["python", "hello.py"]
