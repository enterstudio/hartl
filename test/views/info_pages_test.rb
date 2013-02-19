require 'test_helper'

describe "Info pages view" do
  
  # Re-usable code
  let(:h1) { find 'h1' }
  let(:rw) { find '.rw-sentence' }
  let(:title) { first('title').native.text }
  
  describe "Home page" do
    
    it "should have the Header 'Home' and correct title" do
      visit root_path
      rw.must_have_content("Mini")
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
  
  describe "About Me page" do

    it "should have the Header 'About Me' and correct title" do
      visit about_path
      h1.must_have_content("About Me")
      title.must_include("| About Me")
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
      h1.must_have_content("Contact Me")
      title.must_include("| Contact")
    end
  end
  
  describe "Careers page" do

    it "should have the Header 'Careers' and correct title" do
      visit careers_path
      h1.must_have_content("Careers")
      title.must_include("| Careers")
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
