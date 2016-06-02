FactoryGirl.define do
  factory :post do
    title 'test'
    body 'test body'
    user
  end
end