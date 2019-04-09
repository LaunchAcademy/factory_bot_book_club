require 'spec_helper'

feature "book club show page" do
  scenario "user views book club details on show page" do
    club = FactoryBot.create(:book_club)
    
    joe = FactoryBot.create(:member, book_club: club)
    joeT = FactoryBot.create(:member, last_name: "Tenore", book_club: club)
    casi = FactoryBot.create(:member, first_name: "Casi", last_name: "Newell", book_club: club)
    
    dan = FactoryBot.create(:club_leader)
        
    visit "/book_clubs/#{club.id}"
      
    expect(page).to have_content(club.name)
  end
end