require 'spec_helper'

feature "when navigating to the book club index page" do
  let!(:book_club_one) { BookClub.create(name: "Fantasy Launchers", location: "10 Floor only") }
  let!(:book_club_two) { BookClub.create(name: "Magical Book Club", location: "was in your heart all along") }
  
  scenario "user views all book clubs" do

    visit "/book_clubs"

    expect(page).to have_content(book_club_one.name)
    expect(page).to have_content(book_club_one.location)
    
    expect(page).to have_content(book_club_two.name)
    expect(page).to have_content(book_club_two.location)
  end
end
