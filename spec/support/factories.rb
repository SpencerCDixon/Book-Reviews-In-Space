FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
  end

  factory :book do
    title 'The seasons of life'
    description 'a book about philosophy and success'
    URL 'https://www.seasonsoflife.com'
    user_id 1
  end
end
