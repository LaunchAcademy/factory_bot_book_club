require 'spec_helper'

feature "view a book club's members" do
  scenario 'see all members of a particular book club' do
    book_club = FactoryGirl.create(:book_club)
    members = FactoryGirl.create_list(:member, 12, book_club: book_club)
    leaders = FactoryGirl.create_list(:club_leader, 3, book_club: book_club)

    visit "/book_clubs/#{book_club.id}"

    members.each do |member|
      expect(page).to have_content(member.first_name)
    end

    leaders.each do |leader|
      expect(page).to have_content("#{leader.first_name} (Leader)")
    end
  end
end
