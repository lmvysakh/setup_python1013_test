# Use the base image
FROM python:3.10-slim

# Update the package list and install GLIBC
RUN apt-get update && \
    apt-get install -y libc6

# Optionally clean up the package list to reduce image size
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy your application code to the container
COPY . .

# Run your application
CMD ["python", "your_script.py"]
