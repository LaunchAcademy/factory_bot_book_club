FactoryBot.define do
  factory :book_club do
    # name {"Boston Reads"}
    sequence(:name) { |n| "Book Club #{n}" }
    location {"Boston, MA"}
  end
end
