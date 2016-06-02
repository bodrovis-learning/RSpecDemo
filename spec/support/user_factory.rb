FactoryGirl.define do
  factory :user do
    name 'Test'
    sequence :email do |n|
      "test#{n}@example.com"
    end
    password_digest '123'

    trait :admin do
      admin true
    end

    factory :user_with_posts do
      transient do
        posts_count 5
      end

      after(:stub) do |user, evaluator|
        create_list(:post, evaluator.posts_count, user: user)
      end
    end

    factory :user_with_incorrect_email do
      email 'test'
    end

    factory :admin_user, traits: [:admin]
  end
end