source 'https://rubygems.org'
ruby '2.1.2'

gem 'rails', '4.1.5'
gem 'pg'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc

gem 'ez', '~> 1.1.3' # easier rails development
gem 'colorize' # colorful logs
gem 'sports_data_api' # NFL statistics API

group :developement do
  gem 'spring'
  gem 'quiet_assets'
  gem 'bullet'
end

group :development, :test do
  gem 'rspec-rails', '~> 3.1.0'
  gem 'factory_girl_rails', '~> 4.5.0'
  gem 'pry-rails'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'shoulda'
  gem 'valid_attribute'
end

group :production do
  gem 'unicorn', '~> 4.8.3' # rack http server
  gem 'rails_12factor'
end
