require 'spec_helper'

describe "Info pages" do

  describe "Home page" do

    it "should have the content 'Jobs'" do
      visit '/info_pages/jobs'
      page.should have_content('Jobs')
    end
  end
  
  describe "Terms page" do

    it "should have the content 'Terms'" do
      visit '/info_pages/terms'
      page.should have_content('Terms')
    end
  end
  
  
end