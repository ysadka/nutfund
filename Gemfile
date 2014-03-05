source 'https://rubygems.org'

ruby '2.0.0'

gem 'rails', '>= 4.0.0'

gem 'coffee-rails'
gem 'coinbase'
gem 'delayed_job_active_record', '>= 4.0.0'
gem 'devise'
gem 'email_validator'
gem 'figaro'
gem 'stripe', :git => 'https://github.com/stripe/stripe-ruby'
gem 'haml'
gem 'haml_coffee_assets'
gem 'jquery-rails'
gem 'paperclip'
gem 'pg'
gem 'rack-timeout'
gem 'recipient_interceptor'
gem 'role_model'
gem 'sass-rails'
gem 'simple_form'
gem 'uglifier'
gem 'unicorn'
gem 'zurb-foundation'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'foreman'
  gem 'guard'
  gem 'guard-rspec'
end

group :development, :test do
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'parallel_tests'
  gem 'rspec'
  gem 'rspec-core'
  gem 'rspec-expectations'
  gem 'rspec-mocks'
  gem 'rspec-rails', '>= 2.14'
  gem 'shoulda-matchers'
  gem 'zeus', '>= 0.13.4.pre2'
end

group :test do
  gem 'capybara-webkit', '>= 1.0.0'
  gem 'database_cleaner'
  gem 'simplecov', require: false
end

group :staging, :production do
  gem 'newrelic_rpm', '>= 3.6.7'
  gem 'rails_12factor'
end
