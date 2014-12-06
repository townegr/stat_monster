source 'https://rubygems.org'
ruby '2.0.0'

gem 'rails', '~> 4.1.5'
gem 'pg'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc

gem 'jquery-turbolinks'
gem 'bootstrap-sass', '~> 3.3.1'
gem 'autoprefixer-rails' # automatically adds browser vendor prefixes
gem 'ez', '~> 1.1.3' # easier rails development
gem 'colorize' # colorful logs
gem 'sports_data_api', path: '~/Desktop/Projects/sports_data_api' # NFL statistics API
gem 'cocoon' # unobtrusive nested forms handling, using jQuery
gem 'select2-rails' # clean select menus
gem 'simple_form' # form DSL

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
