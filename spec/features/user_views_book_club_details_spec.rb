require 'spec_helper'

feature "book club show page" do
  scenario "user views book club details on show page" do
    book_club_one = BookClub.create(name: "ezLaunchers", location: "5th floor patio")

    casi = Member.create(first_name: "Casi", last_name: "Newell", email: "test@ezCater.com", bio: "smarty smart smart" , favorite_book: "Something russian", leader: true, book_club: book_club_one )
    zach = Member.create(first_name: "Zach", last_name: "Martin", email: "test@ezCater.com", bio: "very sophisticated", favorite_book: "Game of Thrones", leader: false, book_club: book_club_one)

    visit "/book_clubs/#{book_club_one.id}"

    expect(page).to have_content(book_club_one.name)
  end
end
