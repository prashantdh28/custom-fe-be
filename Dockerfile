# Use the official Python image from the Docker Hub with the specified version
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /backend

# Copy the requirements.txt file into the container at /backend
COPY requirements.txt /backend/

# Install the dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container at /backend
COPY . /backend/

# Expose the port the app runs on
EXPOSE 5000

# Set the command to run the application
CMD ["python", "app.py"]
