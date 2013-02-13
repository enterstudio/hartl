require 'test_helper'

describe "Layouts view" do
  
  # Re-usable code
  let(:title) { first('title').native.text }
  
  describe "Home page" do
    
    it "should have the Title 'Hartl App | ...'" do
      visit '/info_pages/home'
      title.must_include("Home")
    end
  end
  
  
end
