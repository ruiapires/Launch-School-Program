def answer(message)
  puts "#{message}"
end

def clear_screen
  system('clear') || system('cls')
end

clear_screen

# Question 1
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers
answer("It will print 1, 2, 2, 3. That's because uniq, when
  is called don't mutate the numbers variable. If we had
  used #uniq! numbers would had changed")

# Question 2
#Describe the difference between ! and ? in Ruby.
#And explain what would happen in the following scenarios:

answer(" ! is called Logical NOT Operator.
  Use to reverses the logical state of its operand.
  If a condition is true, then Logical NOT operator
  will make false. ? could be, when used with : a
  conditional expression, or it can be used with a method
  like include?, or start_with?")

#what is != and where should you use it?
answer("Checks if the value of two operands are
  equal or not. If values are not equal then condition
  becomes true.")
#put ! before something, like !user_name
answer("Is used to turn user_name into a different boolean
  that it is.")
#put ! after something, like words.uniq!
answer("It means that's going to mutate the caller. In
  this example, words")
#put ? before something
#put ? after something
answer("This is used in a ternary condition and also
  in some methods.")
#put !! before something, like !!user_name
answer("Turns the object into the boolean equivalent.")

# Question 3
# Replace the word "important" with "urgent" in this string:
advice = "Few things in life are as
important as house training your pet dinosaur."

advice = advice.gsub("important", "urgent")

answer(advice)

# Question 4
# The Ruby Array class has several methods for removing items from the array.
# Two of them have very similar names. Let's see how they differ:
numbers = [1, 2, 3, 4, 5]
# What do the following method calls do
#(assume we reset numbers to the original array between method calls)?

numbers.delete_at(1)
answer(numbers)

numbers = [1, 2, 3, 4, 5]
numbers.delete(1)
answer(numbers)

answer("#delete_at deletes an element in a specific index.
  #delete deletes all elements in the array that are equal
  to the object. In this case, in the first example the
    number 2 it deleted, and in the second example the
    number 1 is deleted. Both, always return the value of
    the element removed, or nil.")

# Question 5
# Programmatically determine if 42 lies between 10 and 100.
answer("True") if (10..100).include?(42)
answer("True") if (10..100).cover?(42)

# Question 6
# Starting with the string:
famous_words = "seven years ago..."
# show two different ways to put the expected "Four score and " in front of it.

answer(famous_words.insert(0, "Four score and "))

famous_words = "seven years ago..."
answer(famous_words.prepend("Four score and "))

# Question 7
# Fun with gsub:

def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }
#If we take advantage of Ruby's Kernel#eval method to have it execute
# this string as if it were a "recursive" method call
p eval(how_deep)
# what will be the result?

# Question 8
# If we build an array like this:
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
# We will end up with this "nested" array:
# ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
# Make this into an un-nested array.
p flintstones.flatten!

# Question 9
# Given the hash below
flintstones = {
  "Fred" => 0,
  "Wilma" => 1,
  "Barney" => 2,
  "Betty" => 3,
  "BamBam" => 4,
  "Pebbles" => 5
}
# Turn this into an array containing only
# two elements: Barney's name and Barney's number
flintstones = flintstones.rassoc(2) #or flintstones.assoc("Barney")

p flintstones

# Question 10
# Given the array below
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
# Turn this array into a hash where the names are the
#keys and the values are the positions in the array.

flintstones_2 = {}
flintstones.each_with_index { |item, index| flintstones_2[item] = index }

p flintstones_2
