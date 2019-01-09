require 'spec_helper'

feature "user visits book club show page" do
  scenario "user sees details for one book club" do
    jane = FactoryBot.create(:member)
    book_club1 = jane.book_club
    walt = FactoryBot.create(:member,
      first_name: 'Walt',
      last_name: 'Whitman',
      book_club: book_club1
    )
    brianna = FactoryBot.create(:club_leader,
      first_name: 'Brianna',
      last_name: 'Kincart',
      book_club: book_club1
    )

    visit "/book_clubs/#{book_club1.id}"

    expect(page).to have_content(book_club1.name)
    expect(page).to have_content(jane.first_name)
    expect(page).to have_content(jane.email)
    expect(page).to have_content(walt.first_name)
    expect(page).to have_content(walt.email)
    expect(page).to have_content("#{brianna.first_name} #{brianna.last_name}, Leader")
  end
end
