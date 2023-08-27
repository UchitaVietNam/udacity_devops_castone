# Use an official Ubuntu image as the base
FROM ubuntu:latest

# Update package sources and install Apache
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean

# Add your custom index.html
RUN echo "Hello World, my name is NGUYEN TUAN VU!" > /var/www/html/index.html

# Expose port 80
EXPOSE 80

# Start Apache in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]