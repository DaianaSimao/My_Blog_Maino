source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.0"

gem "rails", "~> 7.0.0"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "jsbundling-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "cssbundling-rails"
gem "jbuilder"
gem "redis", "~> 4.0"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem "devise"
gem 'will_paginate', '~> 4.0'
gem 'i18n'
gem 'redis-rails'
gem 'faker'
gem 'simplecov', require: false
gem 'rspec-rails'
gem 'capybara'
gem 'factory_bot_rails'
gem 'rails-controller-testing'
gem 'aws-sdk-s3'
gem 'importmap-rails'

group :development, :test do

  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console"
  gem "pry"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end

gem "dockerfile-rails", ">= 1.6", :group => :development

gem "sidekiq", "~> 7.2"
