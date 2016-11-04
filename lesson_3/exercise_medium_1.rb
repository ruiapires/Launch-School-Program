def clear_screen
  system('clear') || system('cls')
end

clear_screen

# Question 1
# Let's do some "ASCII Art" (a stone-age form of nerd artwork from back in
# the days before computers had video screens).

# For this exercise, write a one-line program that creates the
# following output 10 times, with the subsequent line indented 1 space
# to the right:

# The Flintstones Rock!
#  The Flintstones Rock!
#   The Flintstones Rock!

10.times {|number| puts (" " * number) + "The Flintstones Rock!"}

# Question 2
# Create a hash that expresses the frequency with which each
# letter occurs in this string:
statement = "The Flintstones Rock"
# ex: { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }
letters_frequency = {}

statement.each_char {|c| puts c, ' ' }
