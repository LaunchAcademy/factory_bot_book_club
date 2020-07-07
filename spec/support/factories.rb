FactoryBot.define do
  factory :book_club do
    name { "Boston Books" }
    location { "Boston MA" }
  end

  factory :member do
    first_name { "Jane" }
    last_name {"Austen"}
		sequence(:email) {|n| "writer#{n}@writers.com"}
    bio {"Am I more full of Sense or Sensibility"}
    favorite_book {"Pride and Prejudice"}

		factory :club_leader do
		  leader {true}
		end
  end
end
