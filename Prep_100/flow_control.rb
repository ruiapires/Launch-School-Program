#Introduction to Programming
#Chapter - Flow Control
#Exercises

def result(answer)
  puts answer
end

#1
result("false")
result("false")
result("false")
result("true")
result("true")
puts

#2
def all_caps(string)
  string.length >= 10 ? string.upcase : string
end

result(all_caps("hello world"))
puts

#3
puts "Pick a number from 0 to 100"
number = gets.chomp.to_i

if number < 0
  puts "You pick #{number}. Choose a positive number between 0 and 100"
elsif number <= 50
  puts "You picked #{number}, a number between 0 and 50!"
elsif (number >= 51) && (number <= 100)
  puts "You picked #{number}, a number between 51 and 100"
else
  puts "#{number} is not from 0 to 100!"
end
puts

#4
result("false")
result("Did you get it right?")
result("Alright now!")
puts

#5
def ifBetween_0_100(number)
  if number < 0
    puts "You pick #{number}. Choose a positive number between 0 and 100"
  elsif number <= 50
    puts "You picked #{number}, a number between 0 and 50!"
  elsif (number >= 51) && (number <= 100)
    puts "You picked #{number}, a number between 51 and 100!"
  else
    puts "#{number} is not from 0 to 100!"
  end
end

result(ifBetween_0_100(-5))
result(ifBetween_0_100(45))
result(ifBetween_0_100(56))
result(ifBetween_0_100(123))

def whenBetween_0_100(number)
  case
  when number < 0 then "You pick #{number}. Choose a positive number between 0 and 100"
  when number <= 50 then "You picked #{number}, a number between 0 and 50!"
  when number <= 100 then "You picked #{number}, a number between 51 and 100!"
  else "#{number} is not from 0 to 100!"
  end
end

result(whenBetween_0_100(-5))
result(whenBetween_0_100(34))
result(whenBetween_0_100(67))
result(whenBetween_0_100(109))
puts

#6
result("The error is due to the missing 'end' on the method.
  to fix that we only need to put and 'end' in the method.")
