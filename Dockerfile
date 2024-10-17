FROM python:3.9.7-slim-buster

# Set the working directory to /sample-flask-app
WORKDIR /sample-flask-app

# Copy the code from the source to the image's code directory
COPY . .

# Install dependencies
RUN pip install -r requirements.txt

# Environment variables
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_ENV=development

# Expose the port
EXPOSE 5000

# Start the development server
CMD ["flask", "run"]
