require 'spec_helper'

feature "book club index page" do
  let!(:book_club_one) { BookClub.create(name: "ezLaunchers", location: "5th floor patio") }
  let!(:book_club_two) { BookClub.create(name: "Magical Book Club", location: "in your heart all along") }
  
  scenario "user views all book clubs on the index page" do

    visit "/book_clubs"

    expect(page).to have_content(book_club_one.name)
    expect(page).to have_content(book_club_one.location)
    
    expect(page).to have_content(book_club_two.name)
    expect(page).to have_content(book_club_two.location)
  end
end
