# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

puts "Choose one number"
user_input_1 = gets.chomp.to_i
puts "Choose another number"
user_input_2 = gets.chomp.to_i
puts "Choose an operation: +, -, /, *"
user_input_3 = gets.chomp


if user_input_3 == "+"
  puts user_input_1 + user_input_2
elsif user_input_3 == "-"
  puts user_input_1 - user_input_2
elsif user_input_3 == "/"
  puts user_input_1.to_f / user_input_2.to_f
elsif user_input_3 == "*"
  puts user_input_1 * user_input_2
else
  puts "Error! Must choose numbers and operations!"
end
