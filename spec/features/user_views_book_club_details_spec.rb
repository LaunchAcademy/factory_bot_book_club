require 'spec_helper'

feature "book club show page" do
  let!(:book_club_one) {FactoryBot.create(:book_club)}

  let!(:member_1) {FactoryBot.create(:member, book_club: book_club_one)}
  let!(:member_2) {FactoryBot.create(:member, first_name: "Evil", last_name: "Morty", book_club: book_club_one)}
  let!(:member_3) {FactoryBot.create(:member, first_name: "Kvothe", last_name: "Vintas", book_club: book_club_one)}

  context "when there is no leader" do
    scenario "user views book club details on show page" do
      visit "/book_clubs/#{book_club_one.id}"

      expect(page).to have_content(book_club_one.name)

      expect(page).to have_content(member_1.first_name)
      expect(page).to have_content(member_1.email)

      expect(page).to have_content(member_2.first_name)
      expect(page).to have_content(member_2.email)

      expect(page).to have_content(member_3.first_name)
      expect(page).to have_content(member_3.email)

      expect(page).to_not have_content("Leader")
    end
  end
  context "when a leader is present" do
    scenario "user views book club details on show page" do
      leader = FactoryBot.create(:club_leader, book_club: book_club_one)

      visit "/book_clubs/#{book_club_one.id}"

      expect(page).to have_content(book_club_one.name)

      expect(page).to have_content(member_1.first_name)
      expect(page).to have_content(member_1.email)

      expect(page).to have_content(member_2.first_name)
      expect(page).to have_content(member_2.email)

      expect(page).to have_content(member_3.first_name)
      expect(page).to have_content(member_3.email)

      expect(page).to have_content("#{leader.first_name} #{leader.last_name}, Leader")
    end
  end
end
