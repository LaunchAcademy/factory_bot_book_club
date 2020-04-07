FactoryBot.define do
  factory :book_club do
      sequence(:name) { |n| "Boston Books #{n}" }
      location { "Boston" }
  end
end
