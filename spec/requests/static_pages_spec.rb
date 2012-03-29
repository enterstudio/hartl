require 'spec_helper'

describe "Static pages" do
  
  let(:base_title) { "Botflip" }
  subject { page }

  describe "Home page" do
    before {visit root_path} 

    it {should have_selector('h1',:text => "Welcome to #{base_title}!")}
    it {should have_selector('title',:text => "#{base_title}")}
    it {page.should_not have_selector('title',:text => '| Home')}

    describe "for signed-in users" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        FactoryGirl.create(:micropost, user: user, content: "Lorem ipsum")
        FactoryGirl.create(:micropost, user: user, content: "Dolor sit amet")
        sign_in user
        visit root_path
      end

      it "should render the user's feed" do
        user.feed.each do |item|
          page.should have_selector("li##{item.id}", text: item.content)
        end
      end
    end
    
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