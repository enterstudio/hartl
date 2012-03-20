require 'spec_helper'

describe "Static pages" do
  
  let(:base_title) { "Botflip" }
  subject { page }

  describe "Home page" do
    before {visit root_path} 

    it {should have_selector('h1',:text => "Welcome to #{base_title}!")}
    it {should have_selector('title',:text => "#{base_title}")}
    it {page.should_not have_selector('title',:text => '| Home')}
    
  end
  
  describe "Help page" do
    before {visit help_path}

    it {should have_selector('h1',:text => 'Help')}
    it {should have_selector('title',:text => "#{base_title} | Help")}
  end
    
  describe "About page" do
      before {visit about_path}

    it {should have_selector('h1',:text => 'About Us')}
    it {should have_selector('title',:text => "#{base_title} | About Us")}  
  end
    
end