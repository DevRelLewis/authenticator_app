dial_book = {
  "New York" => "212",
  "New Brunswick" => "732",
  "Edison" => "908",
  "Plainsboro" => "609",
  "San Francisco" => "301",
  "Miami" => "305",
  "Palo Alto" => "650",
  "Evanston" => "847",
  "Orlando" => "407",
  "Lancaster" => "717"
}

# Method to display city names
def get_city_names(dial_book)
  puts "Enter a city from the list below:"
  25.times { print "-" }
  puts
  dial_book.keys.each { |city| puts city }
end

# Method to return the area code for a given city
def get_area_code(dial_book, city)
  if dial_book.include?(city)
    "The area code for #{city} is #{dial_book[city]}."
  else
    "City not found. Please try again."
  end
end

# Main loop for the program
def area_code(dial_book)
  puts "Welcome to areaCode. Do you want to lookup an area code based on a city name? (Y/N)"
  
  loop do
    answer = gets.chomp.downcase
    if answer != "y"
      puts "Thank you for using areaCode. Have a nice day 😀"
      break
    else
      loop do
        get_city_names(dial_book)
        puts
        puts "Please choose a city"
        city = gets.chomp

        puts get_area_code(dial_book, city)

        puts "Would you like to pick another city? (Y/N)"
        new_answer = gets.chomp.downcase
        
        # If the user doesn't want to pick another city, exit both loops
        if new_answer != "y"
          puts "Thank you for using areaCode. Have a nice day 😀"
          return  # Use return to exit the method completely
        end
      end
    end
  end
end

# Run the program
area_code(dial_book)
