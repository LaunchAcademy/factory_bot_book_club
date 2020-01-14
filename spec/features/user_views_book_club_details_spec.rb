require 'spec_helper'

feature "book club show page" do
  # let(:boston_books) { BookClub.create(
  #   name: "Boston Books",
  #   location: "Boston"
  #   )
  # }

  let(:best_book_club) {
    FactoryBot.create(:book_club, name: "Best Book Club")
  }

  scenario "user views book club details on show page" do
    5.times do
      FactoryBot.create(:book_club)
    end

    awesome_book_club = BookClub.last
    
    visit "/book_clubs/#{awesome_book_club.id}"

    expect(page).to have_content(awesome_book_club.name)
  end
end
