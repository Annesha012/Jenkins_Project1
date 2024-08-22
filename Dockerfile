Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set environment variables to prevent .pyc files and enable unbuffered output
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set the working directory in the container
WORKDIR /app

# Install Python dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application source code into the container
COPY hello.py .

# Command to run the Flask app
CMD ["python", "hello.py"]
