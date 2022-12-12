# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE $PORT

# Run the migration commands
RUN python manage.py makemigrations
RUN python manage.py migrate

# Define environment variable
# ENV NAME World

# Run the Django server
CMD ["python", "manage.py", "runserver"]
