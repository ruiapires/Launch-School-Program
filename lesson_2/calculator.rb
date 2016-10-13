# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

puts "Choose one number"
userinput1 = gets.chomp.to_i
puts "Choose another number"
userinput2 = gets.chomp.to_i
puts "Choose an operation: +, -, /, *"
userinput3 = gets.chomp

if userinput3 == "+"
  puts userinput1 + userinput2
elsif userinput3 == "-"
  puts userinput1 - userinput2
elsif userinput3 == "/"
  puts userinput1.to_f / userinput2.to_f
elsif userinput3 == "*"
  puts userinput1 * userinput2
else
  puts "Error! Must choose numbers and operations!"
end
