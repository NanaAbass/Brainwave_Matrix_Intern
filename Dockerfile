# Use a lightweight official Nginx image to serve the HTML files
FROM nginx:alpine

# Copy the two HTML files into the Nginx web server directory
COPY VitalCare-web-app.html /usr/share/nginx/html/
COPY Landing_page.html /usr/share/nginx/html/

# Expose port 80 to the outside world
EXPOSE 80