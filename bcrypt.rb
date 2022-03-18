require 'bcrypt'
#
# # my_password = BCrypt::Password.create("my password")
# # puts my_password
#
#
# my_password = BCrypt::Password.new("$2a$12$0lVnVG4h7zOHW1Q5qcbSL.noUldUVoy2KpvupwwFdFhb3vBQQ7ckm")
# puts my_password == "my password"     #=> true
# # my_password == "not my password" #=> false


users = [
  { username: "nicholas", password: "pass1"},
  { username: "dylan", password: "pass2"},
  { username: "daniel", password: "pass3"},
  { username: "stephanie", password: "pass4"},
  { username: "jack", password: "pass5"},
]

# we can run through each user, grab their password, and run this create_hash_digest method on them

def create_hash_digest(password)
  BCrypt::Password.create(password)
end

def verify_hash_digest(password)
  BCrypt::Password.new(password)
end

def create_secure_users(list_of_users)
  list_of_users.each do |user_record|
    user_record[:password] = create_hash_digest(user_record[:password]) # takes the list of users and coverts all of the passwords to a hashed version
  end
  list_of_users # return list of users
end

puts create_secure_users(users)
