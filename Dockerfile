# Use the official Apache image as the base image
FROM httpd:latest

# Copy the website files into the container's web root directory
COPY /website /usr/local/apache2/htdocs/

# Expose port 80 to allow external access to the web server
EXPOSE 80