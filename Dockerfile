# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 8001 available to the world outside this container
EXPOSE 8001

# Define environment variables if needed (e.g., for database configuration)
# ENV DJANGO_SETTINGS_MODULE=myapp.settings

# Run the Django development server on container startup
CMD ["python", "manage.py", "runserver", "0.0.0.0:8001"]
