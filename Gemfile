source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.1'

# Use mysql as the database for Active Record
gem 'mysql2'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc


# Figaro for setting environment variables for secrets that aren't included with the source code
gem 'figaro'

group :development do
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  #For deployment
  gem 'capistrano-rails', '~> 1.1.2'
  gem 'capistrano-rvm', '~> 0.1.1'
  gem 'capistrano-bundler', '~> 1.1.3'
end


group :development, :test do
  # Use pry debugging
  gem 'pry-rails'

  # Rspec for testing
  gem 'rspec-rails', '~> 2.0'

  #Fixture replacement. Feeds test data to the test suite
  gem 'factory_girl_rails', '~> 4.0'
end

group :test do
  # Generates name, email and other placeholders for factories
  gem 'faker'

  # Simulates user interaction with the web application
  gem 'capybara'

  # Makes sure each spec run with a clean database. Clears database after running each spec
  gem 'database_cleaner'

  # Opens default web browser on demand to show what the application is rendering
  gem 'launchy'

  # Lets us test js based browser interactions with capybara
  gem 'selenium-webdriver'
end

