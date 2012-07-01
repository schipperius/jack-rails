source 'https://rubygems.org'

ruby '1.9.3'
gem 'rails', '3.2.6'

gem 'jquery-rails', '2.0.0'
gem "bootstrap-sass", "~> 2.0.3.1"

gem "devise", "~> 2.1.2"
gem "cancan", "~> 1.6.7"

gem 'acts-as-taggable-on', '~> 2.3.1'
gem "paperclip", "~> 3.1.1"
gem "aws-sdk", "~> 1.5.4"

gem "thin", "~> 1.3.1"
gem "foreman", "~> 0.47.0"


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '3.2.4'
  gem 'coffee-rails', '3.2.2'
  gem 'uglifier', '1.2.3'
end


group :development, :test do
  gem 'sqlite3', '1.3.5'
  gem 'rspec-rails', '2.10.0'
  gem 'guard-rspec', '0.5.5'
end


group :development do
  gem "ruby_gntp", "~> 0.3.4"
  gem "guard-livereload", "~> 0.4.2"
  gem "growl_notify", "~> 0.0.3"
  gem 'annotate', '>=2.5.0.pre1'
end


group :test do
  gem 'capybara', '1.1.2'
  gem 'rb-fsevent', '0.4.3.1', :require => false
  gem 'growl', '1.0.3'
  gem 'guard-spork', '0.3.2'
  gem 'spork', '0.9.0'

  gem "cucumber-rails", "~> 1.3.0", :require => false
  gem "database_cleaner", "~> 0.8.0"
  gem "email_spec", "~> 1.2.1"
  gem "factory_girl_rails", "~> 3.5.0"
end


group :production do
  gem "pg", "~> 0.13.2"
  gem "taps", "~> 0.3.24"
end

# Deploy with Capistrano
# gem 'capistrano'