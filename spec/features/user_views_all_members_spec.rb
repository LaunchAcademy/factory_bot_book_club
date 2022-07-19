require 'spec_helper'

feature 'when a regular user vists the member index page' do
  let!(:book_club_one) { BookClub.create(name: "Fantasy Launchers", location: "10 Floor only") }
# 
  let!(:casi) { Member.create(first_name: "Casi", last_name: "Newell", email: "casi@ezCater.com", bio: "smarty smart smart" , favorite_book: "Something russian", leader: true, book_club_id: book_club_one.id ) }
  let!(:zach) { Member.create(first_name: "Zach", last_name: "Martin", email: "zach@ezCater.com", bio: "very sophisticated", favorite_book: "Game of Thrones", leader: false, book_club_id: book_club_one.id) }
  # let!(:brianna) { Member.create(first_name: "Brianna", last_name: "Kincart", email: "brianna@ezCater.com", bio: "she's alright I guess", favorite_book: "The Alchemist", leader: false, book_club_id: book_club_one.id) }

  # requires factorybot knowledge
  let!(:brianna) { FactoryBot.create(:club_leader, book_club_id: book_club_one.id) }

  scenario 'user can see all book club members from all clubs' do

    visit '/members'

    expect(page).to have_content "All of Our Members"
    expect(page).to have_content(casi.first_name)
    expect(page).to have_content(casi.last_name)
    expect(page).to have_content(zach.first_name)
    expect(page).to have_content(zach.last_name)
    expect(page).to have_content(brianna.first_name)
    expect(page).to have_content(brianna.last_name)
  end
end
