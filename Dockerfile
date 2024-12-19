# Use the official NGINX image from the Docker Hub
FROM nginx:latest

# Copy the index.html file into the NGINX container
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to make the web server accessible
EXPOSE 80

# Run NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]
