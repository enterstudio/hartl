require 'test_helper'

describe "Info pages view" do
  
  # Re-usable code
  let(:h1) { find 'h1' }
  let(:title) { first('title').native.text }
  
  describe "Home page" do
    
    it "should have the Header 'Home' and correct title" do
      visit root_path
      h1.must_have_content("Welcome to MiniFlip")
      title.must_equal("Hartl App")
      title.wont_include("| Home")
    end
  end
  
  describe "Terms page" do

    it "should have the Header 'Terms' and correct title" do
      visit terms_path
      h1.must_have_content("Terms")
      title.must_include("| Terms")
    end
  end
  
  describe "About Us page" do

    it "should have the Header 'About Us' and correct title" do
      visit aboutus_path
      h1.must_have_content("About Us")
      title.must_include("| About Us")
    end
  end
  
  describe "FAQ page" do

    it "should have the Header 'Frequently Answered Questions' and correct title" do
      visit faq_path
      h1.must_have_content("Frequently Answered Questions")
      title.must_include("| FAQ")
    end
  end
  
  describe "Contact page" do

    it "should have the Header 'Contact' and correct title" do
      visit contact_path
      h1.must_have_content("Contact Us")
      title.must_include("| Contact")
    end
  end
  
  describe "Jobs page" do

    it "should have the Header 'Jobs' and correct title" do
      visit jobs_path
      h1.must_have_content("Jobs")
      title.must_include("| Jobs")
    end
  end
  
  describe "Privacy page" do

    it "should have the Header 'Privacy' and correct title" do
      visit privacy_path
      h1.must_have_content("Privacy")
      title.must_include("| Privacy")
    end
  end
  
  describe "Quotes page" do

    it "should have the Header 'Quotes' and correct title" do
      visit quotes_path
      h1.must_have_content("Quotes from Students")
      title.must_include("| Quotes")
    end
  end
  
end
