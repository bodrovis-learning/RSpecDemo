FactoryGirl.define do
  factory :user do
    name 'Test'
    email 'test@example.ru'
    password_digest '123'

    trait :admin do
      admin true
    end

    factory :user_with_incorrect_email do
      email 'test'
    end

    factory :admin_user, traits: [:admin]
  end
end