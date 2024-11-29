# Use an official Python image as the base
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy requirements.txt and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy your Flask app code into the container
COPY . .

# Expose the port your app will run on (5000 for Flask)
EXPOSE 5000

# Specify the command to run the app
CMD ["python", "app.py"]

# Instructions to run locally:
# docker build -t flask-app .
# docker run -p 5000:5000 flask-app
