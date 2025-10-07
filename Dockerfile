# Use official nginx image
FROM nginx:alpine

# Copy HTML files and assets
COPY index.html /usr/share/nginx/html/
COPY ann.png /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
