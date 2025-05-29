# Use official Python 3.10 slim image as base
FROM python:3.10-slim

# Set working directory inside container
WORKDIR /app

# Copy requirements.txt and install dependencies
COPY requirements.txt .

# Install dependencies (no virtualenv, system-wide)
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app source code
COPY . .

# Expose port 5000 (default Flask port)
EXPOSE 5000

# Run the app
CMD python3 app.py
