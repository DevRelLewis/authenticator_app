users = [
    {username: "Lewis", password: "password1"},
    {username: "Gregory", password: "password2"},
    {username: "Lenny", password: "password3"},
    {username: "Homer", password: "password4"},
    {username: "Billy", password: "password5"}
]

def find_user(users, input_username, input_password)
    users.each do |user|
        return user if user[:username].downcase == input_username.downcase && user[:password] == input_password
    end
    nil 
end

def authenticate_user(users, username, password)
  user = find_user(users, username, password)
  if user
    "Welcome, #{user[:username]}! Password accepted. Program ended successfully!"
  else
    nil
  end
end

def authenticator(users)
  puts "Welcome to the Authenticator"
  25.times { print "-" }
  puts "\nThis program will take input from the user and compare the password to the correct password."
  puts "If the password is correct, the user object will be returned."

  $max_attempts = 3
  $attempts_counter = 0

  while $attempts_counter < $max_attempts
    puts "Please enter your username:"
    name = gets.chomp
    
    puts "Please enter your password:"
    password = gets.chomp

    message = authenticate_user(users, name, password)

    if message
      puts message
      break
    else
      $attempts_counter += 1
      puts "Invalid username or password, attempt #{$attempts_counter}."
    end

    if $attempts_counter == $max_attempts
      puts "You've reached the maximum number of attempts. Program ended. Please try again later."
    end
  end
end

authenticator(users)