require 'rubygems'

## MiniTest Setup!
ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'minitest/autorun'
require 'capybara/rails'
require 'minitest/wscolor'
require 'capybara/poltergeist'
require 'minitest-metadata'

## Use rack_test as default driver
Capybara.default_driver = :rack_test

## Use poltergeist js driver
Capybara.javascript_driver = :poltergeist
  
  
# Code for integration tests
module ActionDispatch
  class IntegrationTest
    
    include Capybara::DSL
    Capybara.default_driver = :poltergeist
    
    before { set_page_size_to_13inch_macbook_air }
    after  { capybara_reset_sessions! }
    
    protected

    def capybara_reset_sessions!
      Capybara.reset_sessions!
    end

    def set_page_size_to_13inch_macbook_air
      page.driver.resize 1440, 900
    end

    def save_and_open_page
      dir = "#{Rails.root}/tmp/cache/capybara"
      file = "#{dir}/#{Time.now.strftime('%Y-%m-%d-%H-%M-%S')}.png"
      FileUtils.mkdir_p dir
      page.driver.render file
      wait_until { File.exists?(file) }
      system "open #{file}"
    end
    alias_method :page!, :save_and_open_page

    def execjs(string)
      page.evaluate_script(string)
    end
    
  end
  
end


  
## Various kinds of tests  
class ViewTest < Minitest::Spec
  include Rails.application.routes.url_helpers
  include Capybara::DSL
  register_spec_type /view$/, self
end

class IntegrationTest < ActionDispatch::IntegrationTest
  include Rails.application.routes.url_helpers
  
  before do
    if metadata[:js] == true
      Capybara.current_driver = Capybara.javascript_driver
    end
  end

  after do
    Capybara.use_default_driver
  end
  
  register_spec_type /integration$/, self
end



# Support transaction fixtures. Single connection.
class ActiveRecord::Base
  def self.connection
    @@shared_connection ||= retrieve_connection
  end
end
