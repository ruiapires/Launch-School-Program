#Introduction to Programming
#Chapter - Variables
#Exercises

#1
puts "What's your name?"
name = gets.chomp

puts "Nice to meet you #{name}"

#2
puts "How old are you?"
age = gets.chomp

puts "In 10 years you will be: \n#{age.to_i + 10}"
puts "In 20 years you will be: \n#{age.to_i + 20}"
puts "In 30 years you will be: \n#{age.to_i + 30}"
puts "In 40 years you will be: \n#{age.to_i + 40}"

#3
10.times {puts name}

#4
puts "what's your first name?"
first_name = gets.chomp
puts "What's your last name?"
last_name = gets.chomp

puts "Your name is " + first_name + " " + last_name + "!"

#5
puts "In the first code, 'X' prints 3 because it was declared outside of
the method and can be used inside of it, in this case to implement
its value. So, it prints 3. In the second code, 'X' was declared
inside of the method so can't be called outside.
It throughs an error: undefined local variable or method 'X'.
The scope of the Variables is what tells us where they can be called."

#6
puts
puts "It tells me that a variable or a method was called
outside of its scope. Or, one of them are not defined."
