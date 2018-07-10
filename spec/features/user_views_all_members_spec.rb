require "spec_helper"

feature "members index page" do
  scenario "user views a list of all members" do
    jane = FactoryBot.create(:member)
    jane2 = FactoryBot.create(:member)
    walt = FactoryBot.create(:member, first_name: 'Walt')

    visit "/members"

    expect(page).to have_content "All Book Club Members"
    expect(page).to have_content(jane.first_name)
    expect(page).to have_content(jane.last_name)
    expect(page).to have_content(jane2.first_name)
    expect(page).to have_content(jane2.last_name)
    expect(page).to have_content(walt.first_name)
    expect(page).to have_content(walt.last_name)
  end
end
