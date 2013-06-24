source 'https://rubygems.org'

ruby '2.0.0'

gem 'rails-i18n'
gem 'redcarpet'
gem 'airbrake'
gem 'clearance', '1.0.0.rc7'
gem 'bourbon'
gem 'neat'
gem 'font-awesome-rails'
#gem 'inherited_resources'
# Gemfile
gem 'rabl'
# Also add either `oj` or `yajl-ruby` as the JSON parser
# gem 'oj '
gem 'remotipart', '~> 1.0'
gem 'paperclip', '~> 3.0'
gem 'inherited_resources', github: 'josevalim/inherited_resources'
gem 'haml-rails'
gem 'high_voltage'
gem 'delayed_job_active_record', '>= 4.0.0.beta2'
gem 'flutie'
gem 'high_voltage'
gem 'jquery-rails'
gem 'pg'
gem 'rack-timeout'
gem 'rails', '>= 3.2.11'
gem 'recipient_interceptor'
gem 'simple_form'
gem 'strong_parameters'
gem 'unicorn'
gem 'cancan'

group :assets do
  gem 'coffee-rails'
  gem 'sass-rails'
  gem 'uglifier'
end

group :development do
  gem 'foreman'
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'sham_rack'
end

group :test do
  gem 'bourne', require: false
  gem 'capybara-webkit', '>= 0.14.1'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'timecop'
end

group :staging, :production do
  gem 'newrelic_rpm'
end

# Use unicorn as the app server
gem 'unicorn'

# Deploy with Capistrano
gem 'capistrano'
