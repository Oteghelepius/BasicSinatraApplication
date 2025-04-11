# Use official Ruby image
FROM ruby:3.2-slim

# Set working directory
WORKDIR /app

# Install dependencies
RUN apt-get update && apt-get install -y build-essential && rm -rf /var/lib/apt/lists/*
RUN gem install sinatra

# Copy app code
COPY app.rb .

# Expose port
EXPOSE 4567

# Start the app
CMD ["ruby", "app.rb"]