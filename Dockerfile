FROM python:3.10-slim

# Set up environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set working directory
WORKDIR /workspace

# Install dependencies
COPY requirements.txt /workspace/
RUN pip install --upgrade pip && pip install -r requirements.txt

# Expose port 5000 for Flask
EXPOSE 5000