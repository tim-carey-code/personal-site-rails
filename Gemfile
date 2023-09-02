# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'administrate'
gem 'bootsnap', require: false
gem 'cssbundling-rails'
gem 'devise'
gem 'dockerfile-rails', '>= 1.5', group: :development
gem 'faker'
gem 'image_processing', '~> 1.2'
gem 'invisible_captcha'
gem 'jbuilder'
gem 'jsbundling-rails'
gem 'pagy'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'pundit'
gem 'rails', '~> 7.0.5'
gem 'redis', '~> 4.0'
gem 'rubocop', require: false
gem 'sentry-rails', '~> 5.10'
gem 'sentry-ruby', '~> 5.10'
gem 'sidekiq', '~> 7.1', '>= 7.1.2'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'view_component', '~> 3.5'

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'dotenv-rails'
end

group :development do
  gem 'annotate'
  gem 'letter_opener'
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

# gem "escompress", "~> 0.3.0"

gem "tailwindcss-rails", "~> 2.0"
