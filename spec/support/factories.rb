FactoryBot.define do
  factory :member do
    first_name { "Jane" }
    last_name  { "Austen" }
    sequence(:email) { |n| "jausten#{n}@test.com" }
    bio { "This is my bio" }
    favorite_book { "Harry Potter" }

    book_club

    factory :club_leader do
      leader { true }
    end
  end

  factory :book_club do
    name {'The best book club ever'}
    location {'Launch Academy'}
  end
end
