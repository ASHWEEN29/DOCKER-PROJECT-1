# Use the official Python image based on Alpine Linux
FROM python:3-alpine3.15

# Set the working directory in the container
WORKDIR /app

# Copy all files from the current directory to /app in the container
COPY . /app

# Install any dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 3000
EXPOSE 3000

# Set environment variables for Flask
ENV FLASK_APP=HEY-PYTHON.py
ENV FLASK_RUN_HOST=0.0.0.0

# Run the application using Flask
CMD ["flask", "run", "--port=3000"]
