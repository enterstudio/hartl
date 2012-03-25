FactoryGirl.define do
  factory :user do
    name     "Michael Hartl"
    email    "michael@railstutorial.org"
    password "foobar"
    password_confirmation "foobar"
  end
end