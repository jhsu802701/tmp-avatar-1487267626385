####################
# BEGIN:initial gems
####################

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

##############################################
# BEGIN: gems that take a long time to install
##############################################
# Please pre-install the proper versions in the Docker image.
gem 'nokogiri', '1.7.0'
gem 'pg', '0.18.4'
gem 'rails', '5.0.1'
############################################
# END: gems that take a long time to install
############################################

# BEGIN: SQLite
# NOTE: This section is automatically deleted by the pg_setup.rb script
group :development, :test do
  gem 'sqlite3', '1.3.13'
end
# END: SQLite

# Use Puma as the app server
gem 'puma', '3.7.0'
# Use SCSS for stylesheets
gem 'sass-rails', '5.0.6'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '3.0.4'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '4.2.1'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', '4.2.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '5.0.1'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '2.6.1'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  gem 'listen', '3.1.5'
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '3.4.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '2.0.1'
  gem 'spring-watcher-listen', '2.0.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

###################
# END: initial gems
###################

# BEGIN: gems used in test_code.sh script
group :development, :testing do
  gem 'brakeman', '3.5.0' # Checks for security vulnerabilities
  gem 'bundler-audit', '0.5.0' # Checks for vulnerable versions of gems
  gem 'gemsurance', '0.7.0' # Checks for outdated and insecure gems
  gem 'rails_best_practices', '1.17.0' # Checks the quality of Rails code, not recommended for legacy apps
  gem 'rubocop', '0.47.1' # Checks for violations of the Ruby Style Guide, not recommended for legacy apps
  gem 'sandi_meter', '1.2.0' # Checks for compliance with Sandi Metz' four rules
end
# END: gems used in test_code.sh script

# Minitest
gem 'minitest', '5.10.1', require: :false, group: :testing
gem 'minitest-reporters', '1.1.14', require: :false, group: :testing # Adds special features to tests

# BEGIN: Capybara (for integration testing)
group :test do
  gem 'capybara', '2.12.0'
  gem 'capybara-email', '2.5.0'
  gem 'capybara-slow_finder_errors', '0.1.4'
end
# END: Capybara (for integration testing)

gem 'email_munger', '0.0.0' # Encodes email address to prevent harvesting by bots

gem 'bootstrap-sass', '3.3.7' # Bootstrap styling

gem 'devise', '4.2.0' # Provides admin/user authentication

gem 'faker', '1.7.2' # Generates fake data used for seeding the database

# BEGIN: gems used for setting up PostgreSQL in the development environment
# You do not need these gems if you use SQLite in the development environment.
# NOTE: Attempts to use "gem install" in the PostgreSQL setup scripts did not pan out.
gem 'figaro', '1.1.1'
gem 'line_containing', '0.1.0'
gem 'remove_double_blank', '0.0.0'
gem 'string_in_file', '0.1.2'
# END: gems used for setting up PostgreSQL in the development environment

# BEGIN: for outline.sh
group :development do
  gem 'annotate', '2.7.1' # Adds comments listing parameters and the output of "rails routes"
  gem 'railroady', '1.5.2' # Generates block diagrams
  gem 'rails-erd', '1.5.0' # Generates block diagrams
end
# END: for outline.sh

# BEGIN: Better Errors
# Provides more and better information in error pages
group :development do
  gem 'better_errors', '2.1.1'
  gem 'binding_of_caller', '0.7.2'
end
# END: Better Errors

gem 'timecop', '0.8.1', group: :testing # Changes current time, needed for testing the lock duration

# Pagination gems
gem 'bootstrap-will_paginate', '0.0.10' # Twitter Bootstrap for pagination
gem 'will_paginate', '3.1.5' # For pagination

gem 'ransack', '1.8.2' # For searching users
