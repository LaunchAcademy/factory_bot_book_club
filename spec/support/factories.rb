FactoryBot.define do
  factory :member do
    first_name 'Jane'
    last_name 'Austen'
    sequence(:email) {|n| "jane#{n}@austen.com" }
    bio 'Do I have more Sense or Sensibility?'
    favorite_book 'Harry Potter'

    book_club

    factory :club_leader do
      leader true
    end
  end

  factory :book_club do
    name "The Best Book Club Ever!"
    location "Boston, MA"
  end
end
