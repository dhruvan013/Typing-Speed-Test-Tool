FROM nginx:alpine

# Copy all files in the current directory to the nginx html directory
COPY . /usr/share/nginx/html

# Rename HTML.html to index.html so Nginx serves it by default
RUN mv /usr/share/nginx/html/HTML.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80
FROM nginx:alpine

# Copy all files in the current directory to the nginx html directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
# Start nginx
CMD ["nginx", "-g", "daemon off;"]

