users = [
            {username: "Lewis", password: "password1"},
            {username: "Gregory", password: "password2"},
            {username: "Lenny", password: "password3"},
            {username: "Homer", password: "password4"},
            {username: "Billy", password: "password5"}
        ]

$maxAttempts = 3
$attemptsCounter = 0

def authenticator
    puts "Welcome to the Authenticator"
    25.times { print "-"}
    puts
    puts "This program will take input from the user and compare the password to the correct password."
    puts "If the password is correct, the user object will be returned"
    
    while $attemptsCounter < $maxAttempts
        puts "Please enter your username"
        name = gets.chomp
        
        if name == "Lewis"
            puts "Your username is correct"
            25.times { print "-"}
            puts "\nPlease enter your password"
            password = gets.chomp

            if password == "password1"
                puts "Password accepted"
                break  # Exit the loop if the password is correct
            else
                $attemptsCounter += 1  # Increment attempts if the password is incorrect
                puts "Password incorrect, attempt #{$attemptsCounter}"
            end
        else
            puts "Username not recognized."
            $attemptsCounter += 1  # Increment attempts if username is not recognized
        end

        if $attemptsCounter == $maxAttempts
            puts "You've reached the maximum number of attempts. Please try again later."
        end
    end
end

authenticator