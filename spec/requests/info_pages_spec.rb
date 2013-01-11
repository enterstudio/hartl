require 'spec_helper'

describe "Info Pages" do

  include Capybara::DSL
  
  describe "Home Page" do
    it "should have the content 'Home'" do
      visit '/info_pages/home'
      page.should have_content('Home')
    end
  end
end
