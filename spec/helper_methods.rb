require_relative "object_creation_methods"

def sign_in(user)
  visit '/'
  click_link ("Login")

  fill_in "Username" , with: user.username
  fill_in "Password" , with: '1'

  click_button "Create User"
end
