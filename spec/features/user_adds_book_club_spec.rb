require 'spec_helper'

feature "when a user navigates to the book club new page" do
    context "if they fill out the form correctly" do 
          scenario "the book will be persisted" do
    
            visit "/book-clubs/new"

            fill_in("Name:", with: "Noir Launchers")
            fill_in("Location:", with: "77 Summer basement")

            click_button "Add Book Club"

            expect(page).to have_content("Noir Launchers")
            expect(page).to have_content("77 Summer basement")
        end
    end


  context "when filling out the form incorrectly" do 
      scenario "the user sees the appropriate errors" do
     
         visit "/book-clubs/new"

        fill_in("Name:", with: "Noir Launchers")

        click_button "Add Book Club"

        expect(page).to have_content("ERRORS PWEEZ")
    end
  end

end
