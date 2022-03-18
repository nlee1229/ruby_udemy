dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

# Get city names from the hash
def get_city_names(somehash)
  somehash.keys # .keys method simply lists out the keys from a hash
end

# Get area code based on given hash and key
def get_area_code(somehash, key)
  somehash[key]
end

# Execution flow
loop do
  puts "Do you want to lookup an area code based on a city name?(Y/N)"
  answer = gets.chomp.downcase
  break if answer != "y"
  puts "What city do you want to lookup the areacode for?"
  puts get_city_names(dial_book)
  puts "Enter your selection"
  input = gets.chomp
  if dial_book.include?(input)
    puts "The area code for #{input} is #{get_area_code(dial_book, input)}"
  else
    puts "The city you have entered does not exist"
  end
end
