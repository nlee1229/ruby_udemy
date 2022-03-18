# x = 5
# y = 10
#
# puts y / x



# #Say hi 20 times
# 20.times { puts "hi" }
#
#
# #Generate a number 20 times between 0-10
# 20.times { puts rand(10) }


def multiply(first_num, second_num)
  first_num.to_f * second_num.to_f
end

def divide(first_num, second_num)
  first_num.to_f / second_num.to_f
end

def subtract(first_num, second_num)
  first_num.to_f - second_num.to_f
end

def add(first_num, second_num)
  first_num.to_f + second_num.to_f
end

def mod(first_num, second_num)
  first_num.to_f % second_num.to_f
end

puts "Simple calculator"
25.times {print "-"}
puts
puts "Enter the first number"
num_1 = gets.chomp
puts "Enter the second number"
num_2 = gets.chomp
puts "The first number multiplied by the second number is #{multiply(num_1, num_2)}"

puts "The first number divided by the second number is #{divide(num_1, num_2)}"

puts "The first number subtracted by the second number is #{subtract(num_1, num_2)}"

puts "The first number added by the second number is #{add(num_1, num_2)}"

puts "The first number modulus the second number is #{mod(num_1, num_2)}"
