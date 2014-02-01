FactoryGirl.define do
  sequence :name do |n|
    "Person #{n}"
  end

  sequence :email do |n|
    "email#{n}@example.com"
  end

  factory :user do
    name
    email
    password              "foobar"
    password_confirmation "foobar"
  end
end
