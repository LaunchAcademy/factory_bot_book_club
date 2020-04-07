require 'spec_helper'

feature 'member index page' do
  scenario 'user views a list of all book club members' do
    john = Member.create(first_name: "John", last_name: "smith", email: "test@test.com" )
    steve = Member.create(first_name: "steve", last_name: "rogers", email: "cap@test.com" )
    bruce = Member.create(first_name: "bruce", last_name: "wayne", email: "bat@test.com" )

    visit "/members"

    expect(page).to have_content(john.first_name)
    expect(page).to have_content(john.last_name)
    expect(page).to have_content(steve.first_name)
    expect(page).to have_content(steve.last_name)
    expect(page).to have_content(bruce.first_name)
    expect(page).to have_content(bruce.last_name)
  end
end
