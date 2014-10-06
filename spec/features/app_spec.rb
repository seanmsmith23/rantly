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
    expect(page).to have_link("JOIN")
  end

  scenario "user should see a registration page when they click the join button" do
    visit '/'

    click_link "JOIN"

    expect(page).to_not have_content("Rantly")
    expect(page).to_not have_content("Let it all out")
    expect(page).to_not have_content("Rantly has allowed a certain freedom I never thought possible.")
    expect(page).to_not have_content("It's really frustrating when you want to be heard and no")
    expect(page).to_not have_content("Jeff Taggart, avid Ranter")

    expect(page).to have_content("Register")
    expect(page).to have_content("Username")
    expect(page).to have_content("Password")
    expect(page).to have_content("First name")
    expect(page).to have_content("Last name")
    expect(page).to have_content("Bio")
    expect(page).to have_content("How often do you rant?")
    expect(page).to have_button("REGISTER")
  end
end