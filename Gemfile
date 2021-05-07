source 'https://rubygems.org'

#core
gem 'rails', '~> 5.2.4', '>= 5.2.4.6'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

## heroku
group :production do
  gem 'pg'
  
  # new relic addon
  gem 'newrelic_rpm'
end


group :development, :test do

  gem 'sqlite3'
  
  ## testing
  gem 'capybara'
  gem 'poltergeist'
  gem 'minitest'
  gem 'minitest-matchers'
  gem 'minitest-spec-rails', '>= 4.3.8'
  gem 'capybara_minitest_spec'
  gem 'minitest-focus'
  gem 'minitest-wscolor'
  gem 'turn'
  
  ## guard
  gem 'rb-fsevent'
  gem 'terminal-notifier-guard'
  gem 'guard-pow'
  gem 'guard-bundler'
  gem 'guard-livereload'
  gem 'guard-shell'
  
  ## rack-livereload
  gem 'rack-livereload'
  
  ## spring accelerator (like spork)
  gem 'spring'
  
  ## errors
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request', '>= 0.2.2'
  
  ## pry for debugging
  gem 'pry'
  gem 'awesome_print'
  
end

# Use Puma as the app server
gem 'puma'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  
  #styling
  gem 'bootstrap-sass'
  gem 'sass-rails', '>= 5.0.5'
  gem 'compass-rails'
  
  #font-awesome
  gem "font-awesome-rails", ">= 3.0.2.0"
  
  # javascripts
  gem 'jquery-rails', '>= 4.0.1'
  gem 'coffee-rails', '>= 4.2.2'
  
  

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end





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
