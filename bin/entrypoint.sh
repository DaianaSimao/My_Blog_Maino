#!/bin/bash

# Start the Rails server in the background
bin/rails server -b 0.0.0.0 &

# Start Sidekiq
bundle exec sidekiq
