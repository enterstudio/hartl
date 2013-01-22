require 'test_helper'

describe "Info pages view" do

  describe "Home page" do
  end
  
  describe "Terms page" do

    it "should have the Header 'Terms'" do
      visit '/info_pages/terms'
      page.must_have_content('Terms')
    end
  end
  
  describe "About Us page" do

    it "should have the Header 'About Us'" do
      visit '/info_pages/aboutus'
      page.must_have_content('About Us')
    end
  end
  
  describe "FAQ page" do

    it "should have the Header 'Frequently Answered Questions'" do
      visit '/info_pages/faq'
      page.must_have_content('Frequently Answered Questions')
    end
  end
  
  describe "Contact page" do

    it "should have the Header 'Contact'" do
      visit '/info_pages/contact'
      page.must_have_content('Contact')
    end
  end
  
  describe "Jobs page" do

    it "should have the Header 'Jobs'" do
      visit '/info_pages/jobs'
      page.must_have_content('Jobs')
    end
  end
  
  describe "Privacy page" do

    it "should have the Header 'Privacy'" do
      visit '/info_pages/privacy'
      page.must_have_content('Privacy')
    end
  end
  
  describe "Quotes page" do

    it "should have the Header 'Quotes'" do
      visit '/info_pages/quotes'
      page.must_have_content('Quotes')
    end
  end
end
