# Use official Ruby 2.7 image
FROM ruby:2.7

# Set working directory
WORKDIR /usr/src/app

# Copy Ruby app into container
COPY hello.rb .

# Expose port 3000
EXPOSE 3000

# Start the web server
CMD ["ruby", "hello.rb"]
