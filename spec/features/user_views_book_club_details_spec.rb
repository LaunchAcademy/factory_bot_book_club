require 'spec_helper'

feature "book club show page" do
  let!(:book_club_one) { BookClub.create(name: "Fantasy Launchers", location: "10 Floor only") }

  # requires associations knowledge
  # let(:casi) { Member.create(first_name: "Casi", last_name: "Newell", email: "casi.newell@launchacademy.com", bio: "smarty smart smart" , favorite_book: "Something russian", leader: true, book_club: book_club_one ) }
  # let(:kerrin) { Member.create(first_name: "Kerrin", last_name: "Gillis", email: "kerrin.gillis@launchacademy.com", bio: "very sophisticated", favorite_book: "Game of Thrones", leader: false, book_club: book_club_one) }
  scenario "user views book club details on show page" do
    
    visit "/book-clubs/#{book_club_one.id}"
    
    expect(page).to have_content(book_club_one.name)
    expect(page).to have_content(book_club_one.location)
    
    # requires associations knowledge
    # expect(page).to have_content(casi.first_name)
    # expect(page).to have_content(zach.first_name)
  end
end
