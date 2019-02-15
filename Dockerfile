# Use an official Python runtime as a parent image
FROM python:3

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN python -m pip install --upgrade --force-reinstall --trusted-host files.pythonhosted.org --trusted-host pypi.org --trusted-host pypi.python.org --no-cache-dir -r requirements.txt

# Make port 8085 available to the world outside this container
EXPOSE 8085

# Define environment variable
ENV MESSAGE ISMAIL

# Run app.py when the container launches
CMD ["python", "app.py"]
