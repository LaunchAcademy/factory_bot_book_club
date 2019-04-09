require 'spec_helper'

feature 'member index page' do
  scenario 'user views a list of all book club members' do
    joe = FactoryBot.create(:member)
    joeT = FactoryBot.create(:member, last_name: "Tenore")
    casi = FactoryBot.create(:member, first_name: "Casi", last_name: "Newell")
        
    visit '/members'
        
    expect(page).to have_content "All Book Club Members"
    expect(page).to have_content(joe.first_name)
    expect(page).to have_content(joe.last_name)
    expect(page).to have_content(joeT.first_name)
    expect(page).to have_content(joeT.last_name)
    expect(page).to have_content(casi.first_name)
    expect(page).to have_content(casi.last_name)
  end
end