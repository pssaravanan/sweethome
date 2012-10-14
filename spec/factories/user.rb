FactoryGirl.define do
  factory :user do
    name "Flex"
    personal_number "9894"
    email "xyz@abc.com"
    password "xxxxxxx"
  end

  factory :home_owner, :parent => :user, :class => HomeOwner
end
