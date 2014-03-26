FactoryGirl.define do
  factory :user do
    username     "example"
    email    "test@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end 