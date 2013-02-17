require 'test_helper'

describe "User pages view" do

  describe "signup page" do
    before { visit signup_path }

    it { must_have_selector('h1',    text: 'Sign up') }
    it { must_have_selector('title', text: 'Sign up') }
  end
end