FactoryGirl.define do
  factory :user do
    name                  "Andrew Hampton"
    email                 "andrew@example.com"
    password              "foobar"
    password_confirmation "foobar"
  end
end
