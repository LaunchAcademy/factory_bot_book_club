require 'spec_helper'

feature "book club index page" do
  # let!(:book_club_one) {BookClub.create(name: "Launchers", location: "deck 7")}
  # let!(:book_club_two) {BookClub.create(name: "Magical Book Club", location: "in your heart all along")}
  let!(:book_club_one) {FactoryBot.create(:book_club)}
  let!(:book_club_two) {FactoryBot.create(:book_club, name: "Magical Book Club")}

  scenario "user views a list of all of the book clubs" do

    visit "/book_clubs"
    expect(page).to have_content(book_club_one.name)
    expect(page).to have_content(book_club_one.location)

    expect(page).to have_content(book_club_two.name)
    expect(page).to have_content(book_club_two.location)
  end
end
