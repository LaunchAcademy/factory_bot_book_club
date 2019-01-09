require 'spec_helper'

feature "user views members index page" do
  scenario "user sees a list of all members on the site" do
    jane = FactoryBot.create(:member)
    jane2 = FactoryBot.create(:member, last_name: 'Austen2')
    walt = FactoryBot.create(:member, first_name: 'Walt', last_name: 'Whitman')
    10.times do
      FactoryBot.create(:member)
    end

    visit "/members"
    # binding.pry
    # save_and_open_page

    expect(page).to have_content(jane.first_name)
    expect(page).to have_content(jane.last_name)
    expect(page).to have_content(jane2.first_name)
    expect(page).to have_content(jane2.last_name)
    expect(page).to have_content('Walt')
    expect(page).to have_content('Whitman')
  end
end
