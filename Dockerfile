# Step 1: Use a base image that serves static web content, e.g., nginx
FROM nginx:alpine

# Step 2: Remove the default nginx HTML content
RUN rm -rf /usr/share/nginx/html/*

# Step 3: Copy your local project files to the nginx directory
COPY . /usr/share/nginx/html

# Step 4: Expose port 80 to make the container accessible
EXPOSE 80

# Step 5: Start nginx server
CMD ["nginx", "-g", "daemon off;"]
