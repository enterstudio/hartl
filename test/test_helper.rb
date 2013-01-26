require 'rubygems'

## MiniTest Setup!
ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'minitest/autorun'
require 'capybara/rails'
require 'minitest/wscolor'
require 'capybara/poltergeist'

## Use rack_test as default driver
Capybara.default_driver = :rack_test

## Use poltergeist js driver
Capybara.javascript_driver = :poltergeist

  
## View tests  
class ViewTest < Minitest::Spec
  include Rails.application.routes.url_helpers
  include Capybara::DSL
  
  register_spec_type /view$/, self
end

# Support transaction fixtures. Single connection.
class ActiveRecord::Base
  def self.connection
    @@shared_connection ||= retrieve_connection
  end
end
