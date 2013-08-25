source 'https://rubygems.org'

gem 'rails', '4.0.0'
gem 'pg'

gem 'jquery-rails'

# gem 'therubyracer', platforms: :ruby
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'

gem 'devise'
gem 'simple_form'

group :assets do
  gem 'sass-rails', '~> 4.0.0'
  gem 'bootstrap-sass', :git => 'git://github.com/thomas-mcdonald/bootstrap-sass.git', :branch => '3'

  gem 'uglifier', '>= 1.3.0'
end

group :doc do
  gem 'sdoc', require: false
end

group :development do
  # better error pages in dev
  gem 'better_errors', '0.3.2'
  gem 'binding_of_caller', '~> 0.7.1'

  # suppress log entries for assets in dev
  gem 'quiet_assets'
end

group :development, :test do
  gem 'rspec-rails', '~> 2.0'
  gem 'shoulda-matchers', '2.2.0'

  gem 'capybara'
  gem 'capybara-webkit'
  gem 'launchy'

  gem 'guard'
  gem 'guard-rspec'

  gem 'factory_girl_rails'
  gem 'faker'

  gem 'database_cleaner'

  # pry for debug
  gem 'pry-rails'
  gem 'pry-debugger'
end
