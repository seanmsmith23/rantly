def create_user(overrides = {})
  default = {username: "exampleuser#{rand(20)}", password: "1", bio: "Just a guy", frequency: "Weekly", first_name: "John", last_name: "Smith"}
  User.create(default.merge(overrides))
end

def create_rant(overrides = {})
  default = {content: "Here is some kind of rant", user_id: 1}
  Rant.create(default.merge(overrides))
end
