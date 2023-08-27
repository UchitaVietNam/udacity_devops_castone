# Use a specific version of Ubuntu as the base
FROM ubuntu:20.04

# Update package sources and install Apache
RUN apt-get update && \
    apt-cache showpkg apache2 && \
    apt-get install -y --no-install-recommends apache2=2.4.41-4ubuntu3.6 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Add your custom index.html
RUN echo "Hello World, my name is NGUYEN TUAN VU!" > /var/www/html/index.html

# Expose port 80
EXPOSE 80

# Start Apache in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]
