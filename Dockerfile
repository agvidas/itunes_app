# Use the official Ruby image as the base image
FROM ruby:3.2.2

# Install system dependencies
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Set the working directory in the container
WORKDIR /app

# Copy the Gemfile and Gemfile.lock to the container
COPY Gemfile Gemfile.lock ./

# Install gems
RUN bundle install

# Copy the entire application to the container
COPY . .

# Start the Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]
