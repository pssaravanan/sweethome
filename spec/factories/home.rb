FactoryGirl.define do
  factory :home do
    name "Home"
    rent_or_sales 1
    amount 15000
    status "Free"
    association :home_owner
    association :location, :strategy => :build
  end
end
