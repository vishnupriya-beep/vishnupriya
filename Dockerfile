FROM nginx:latest

# Remove default nginx static files (optional but clean)
RUN rm -rf /usr/share/nginx/html/*

# Copy your index.html to nginx default directory
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
