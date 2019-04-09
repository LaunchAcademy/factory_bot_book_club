FactoryBot.define do
  factory :member do
    first_name {"Joe"}
    last_name {"Szjfkdsjldfsjlfdsfds"}
    sequence :email do |n| 
      "joe#{n}@joe.com"
    end
    bio {"My name is Joe, I am the coolest dude. But I'm not that pretentious."}
    favorite_book {"A Song of Ice and Fire"}
    book_club
    
    factory :club_leader do
      leader {true}
    end
  end
  
  factory :book_club do
    name {"The book club"}
    location {"Cambridge, MA"}
  end
end
