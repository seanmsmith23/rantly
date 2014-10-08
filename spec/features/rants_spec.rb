require "rails_helper"
require_relative "../object_creation_methods"
require_relative "../helper_methods"

feature "Rants Homepage" do
  scenario "User should see a link to their name that will allow them to edit their info" do
    user = create_user
    sign_in(user)

    expect(page).to have_link(user.full_name)

    click_link(user.full_name)

    expect(page).to have_content("Edit Your Profile")

    fill_in "user[first_name]", with: "Jim"
    click_button "Update"

    expect(page).to have_content("Jim")
  end

  scenario "User should see a place to add their rants" do
    user = create_user
    sign_in(user)

    expect(page).to have_content("New Rant")
    expect(page).to have_button("Create Rant")
  end

  scenario "User should be able to post a rant and see it under 'My Rants'" do
    user = create_user
    sign_in(user)

    expect(page).to have_content("My Rants")

    fill_in "rant[content]", with: "Something"
    click_button "Create Rant"

    expect(page).to have_content("Something")
  end
end