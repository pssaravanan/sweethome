FactoryGirl.define do
  factory :user do
    name "Flex"
    personal_number "9894"
    sequence(:email){|n| "xyz#{n}@abc.com" }
    password "xxxxxxx"
  end

  factory :home_owner, :parent => :user, :class => HomeOwner
end
