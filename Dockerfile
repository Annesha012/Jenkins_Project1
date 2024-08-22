# Use a minimal base image
FROM alpine:latest

Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Install Python dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application source code into the container
COPY hello.py .

# Make the script executable
RUN chmod +x hello.sh

# Run the script when the container launches
CMD ["./hello.sh"]

# Command to run the Python script when the container launches
CMD ["python", "hello.py"]
