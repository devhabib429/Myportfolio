# Use an official Apache image
FROM httpd:2.4

# Copy the website files from your local machine to the container's web directory
COPY /var/jenkins_home/workspace/demopipeline/ /usr/local/apache2/htdocs/

# Expose port 80 (default Apache port)
EXPOSE 80

# Start Apache in the foreground
CMD ["httpd-foreground"]
