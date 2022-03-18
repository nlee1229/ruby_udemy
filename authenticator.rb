users = [
  { username: "nicholas", password: "pass1"},
  { username: "dylan", password: "pass2"},
  { username: "daniel", password: "pass3"},
  { username: "stephanie", password: "pass4"},
  { username: "jack", password: "pass5"},
]

def auth_user(usernam3, passwurd, list_of_users)
  list_of_users.each do |user_rec|
    if user_rec[:username] == usernam3 && user_rec[:password] == passwurd
      return user_rec # will automatically exit the method whenever you return
    end
  end
  "Credentials were incorrect"
end

puts "Welcome to the authenticator"
25.times { print "-" }
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

# username = gets.chomp
# puts "Username: #{username}"
#
# password = gets.chomp
# puts "Passowrd: #{password}"

attempts = 1
while attempts < 4
  print "Username: "
  usernamee = gets.chomp
  print "Password: "
  passwordd = gets.chomp
  authentication = auth_user(usernamee, passwordd, users)
  puts authentication
  puts "Press n to quit or any other key to continue: "
  input = gets.chomp.downcase # this gets the input from the user at each loop
  # if input == "n"
  #   break
  # end
  break if input == "n"
  attempts += 1 # during each loop the number of attempts increases by 1
end

puts "You have exceeded the number of attempts" if attempts == 4
