source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.1"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.6"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
# gem "jbuilder"

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

gem "bootsnap", require: false

gem "rack-cors"

gem 'config'
gem 'discard'
gem 'email_validator'

gem 'dotenv-rails' # used in stg
gem 'paper_trail'

gem 'gretel'
gem 'kaminari'
gem 'meta-tags'
gem 'sitemap_generator'
gem 'slack-notifier'

gem 'fastimage'
gem 'image_processing'
gem 'redcarpet'
gem 'shrine'

gem 'active_model_serializers', '~> 0.10.0'
gem 'counter_culture'

gem 'activeadmin'
gem 'mini_magick'

gem 'http'

gem 'charlock_holmes'

gem 'ransack'

gem 'good_job'


group :development, :test do
  # for sample data
  gem 'faker'
  gem 'forgery_ja'
  gem 'gimei'

  # Code Analyze
  gem 'brakeman', require: false
  gem 'bullet'
  gem 'rails_best_practices', require: false
  gem 'rubocop'

  # Debugger
  gem 'better_errors'
  gem 'pry'
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'pry-rails'
  gem 'rspec_junit_formatter'

  # tests
  gem 'capybara'
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'rspec-rails'
  gem 'simplecov'

  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'rails-erd'

  # for openapi
  gem 'rswag'
end

group :development do
  gem 'web-console'

  gem 'activerecord-import'
  gem 'rack-mini-profiler'

  # gem "spring"
end
