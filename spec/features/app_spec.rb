require "rails_helper"

feature "Homepage" do
  scenario "Anon user should see a splash page" do
    visit '/'

    expect(page).to have_content("Rantly")
    expect(page).to have_content("Rant.ly")
    expect(page).to have_content("Let it all out")
    expect(page).to have_content("Rantly has allowed a certain freedom I never thought possible.")
    expect(page).to have_content("It's really frustrating when you want to be heard and no")
    expect(page).to have_content("Jeff Taggart, avid Ranter")

    expect(page).to have_link("Login")
    expect(page).to have_link("Join")
  end
end