# Use official Python image as base
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Install Python deps
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app code
COPY app.py .

# Expose port & run
EXPOSE 5000
CMD ["python", "app.py"]

