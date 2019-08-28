FactoryBot.define do
  factory :member do
    first_name {"Zach"}
    last_name {"Martin"}
    sequence :email do |n|
      "zach#{n}@joe.com"
    end
    bio {"My name is Zach, I am the coolest dude. But I'm not that pretentious."}
    favorite_book {"Game of Thrones"}
    book_club

    factory :club_leader do
      leader { true }
    end
  end

  factory :book_club do
    name {"The book club"}
    location {"Cambridge, MA"}
  end
end
