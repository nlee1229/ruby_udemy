def multiply(first_num, second_num)
  first_num.to_f * second_num.to_f
end

def subtract(first_num, second_num)
  first_num.to_f - second_num.to_f
end

def add(first_num, second_num)
  first_num.to_f + second_num.to_f
end


puts "Simple calculator"
20.times {print "-"}
puts
puts "Please enter your first number"
first_num = gets.chomp
puts "Please enter your second number"
second_num = gets.chomp
puts "What do you want to do?"
puts "Enter 1 for multiply, 2 for addition, 3 for subtraction"


user_entry = gets.chomp
if user_entry == "1"
  puts "You have chosen to multiply #{first_num} with #{second_num}"
  result = multiply(first_num, second_num)
elsif user_entry == "2"
  puts "You have chosen to add & the result is: #{add(first_num, second_num)}"
elsif user_entry == "3"
  puts "You have chosen to subtract & the result is: #{subtract(first_num, second_num)}"
else
  puts "Invalid entry"
end
