require 'rubygems'
require 'test_helper'

require 'capybara/rails'


## Use poltergeist js driver
Capybara.javascript_driver = :poltergeist
  
  
## Code for integration tests
module ActionDispatch
  class IntegrationTest
    
    include Capybara::DSL
    Capybara.current_driver = Capybara.javascript_driver
        
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


class IntegrationTest < ActionDispatch::IntegrationTest
  include Rails.application.routes.url_helpers
  include Capybara::DSL
  
  before do
    Capybara.current_driver = Capybara.javascript_driver
  end
        
  after do
    Capybara.current_driver = Capybara.default_driver
  end
 
  register_spec_type /integration$/, self
end
