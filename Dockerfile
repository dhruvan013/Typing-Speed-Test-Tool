FROM nginx:alpine

# Remove the default nginx index.html just to be safe
RUN rm -rf /usr/share/nginx/html/*

# Copy all files in the current directory to the nginx html directory
COPY . /usr/share/nginx/html

# Rename your HTML.html to index.html so it becomes the default page
RUN mv /usr/share/nginx/html/HTML.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
