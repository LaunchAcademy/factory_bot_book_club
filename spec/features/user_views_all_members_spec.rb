require 'spec_helper'

feature 'member index page' do
  let!(:member_1) {FactoryBot.create(:member)}
  let!(:member_2) {FactoryBot.create(:member, first_name: "Evil", last_name: "Morty")}
  let!(:member_3) {FactoryBot.create(:member, first_name: "Kvothe", last_name: "Vintas")}

  scenario 'user views a list of all book club members' do
    visit "/members"

    expect(page).to have_content(member_1.first_name)
    expect(page).to have_content(member_1.last_name)

    expect(page).to have_content(member_2.first_name)
    expect(page).to have_content(member_2.last_name)

    expect(page).to have_content(member_3.first_name)
    expect(page).to have_content(member_3.last_name)
  end
end
