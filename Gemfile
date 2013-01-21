source 'https://rubygems.org'

#core
gem 'rails', '~>3.2.11'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

#heroku
group :production do
  gem 'pg'
end


group :development, :test do

  # gem 'rspec-rails'
  gem 'sqlite3'
  
  #testing
  gem 'capybara'
  gem 'minitest-spec-rails'
  
  #guard
  gem 'guard-minitest'
  gem 'rb-fsevent'
  gem 'terminal-notifier-guard'
  gem 'guard-pow'
  gem 'guard-bundler'
  gem 'guard-livereload'
  gem 'guard-spork'
  
  #spork
  gem 'spork'
  gem 'spork-minitest', "~> 1.0.0.beta2"
  
  #rack-livereload
  gem 'rack-livereload'
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
