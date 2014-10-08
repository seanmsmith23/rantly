require "rails_helper"
require_relative "../object_creation_methods"
require_relative "../helper_methods"

feature "Following/Unfollowing Users" do
  scenario "When a user clicks on 'Follow' a user, they can see that user under the following page" do
    user1 = create_user(first_name: "Jimbob", last_name: "Jones")
    user2 = create_user(first_name: "Second", last_name: "Jones")
    create_rant(content: "Some rant", user_id: user2.id)
    sign_in(user1)

    expect(page).to have_link("Follow")
    expect(page).to have_link("Following")

    click_link("Follow")
    click_link("Following")

    expect(page).to have_content(user2.full_name)
  end

  scenario "When a user clicks on 'Follow' a user, they can see that user under the following page" do
    user1 = create_user(first_name: "Jimbob", last_name: "Jones")
    user2 = create_user(first_name: "Second", last_name: "Jones")
    create_rant(content: "Some rant", user_id: user2.id)
    sign_in(user1)

    click_link("Follow")

    expect(page).to have_link("Unfollow")

    click_link("Unfollow")

    expect(page).to_not have_link("Unfollow")
    expect(page).to have_link("Follow")

    expect(page).to have_content(user2.full_name)
  end
end