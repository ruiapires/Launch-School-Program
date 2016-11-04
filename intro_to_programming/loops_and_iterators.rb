#Introduction to Programming
#Chapter - Loops & Iterators
#Exercises

def result(answer)
  puts answer
end

#1
result("It prints out the array X")
puts

#2
user_input = ""

while user_input != "STOP" do
  puts "Do you want to play a game?"
  user_input = gets.chomp
  if user_input.downcase == "yes"
    puts "Insert a number from 0 to 5"
    number = gets.chomp.to_i
    puts "number #{number} is a good option"
  else
    puts "If you want to quit type 'STOP'"
  end
end
puts

#3
array =
  ["Portugal", "England", "Spain", "USA", "France"]

array.each_with_index do |country, index|
  puts "#{index + 1}: #{country}"
end
puts

#4
def counter_to_zero(number)
  puts number
  if number > 0
    counter_to_zero(number - 1)
  end
end

result(counter_to_zero(23))
