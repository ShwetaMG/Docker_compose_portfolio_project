# Use Nginx as the base
FROM nginx:alpine

# Copy the website files into the container
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80