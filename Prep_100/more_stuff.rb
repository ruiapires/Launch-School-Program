#Introduction to Programming
#Chapter - More Stuff
#Exercises

def result(answer)
  puts answer
end

#1
def has_a_lab?(string)
  if string =~ /lab/
    puts string
  else
    puts "String doesn't have 'lab'"
  end
end

result(has_a_lab?("laboratory"))
result(has_a_lab?("experiment"))
result(has_a_lab?("Pans Labyrinth"))
result(has_a_lab?("elaborate"))
result(has_a_lab?("polar bear"))
puts

#2
result("Doesn't print nothing to the screen. A Proc object is returned
  by the method")
puts

#3
result("Exception handling is the way to handle an error by modifying
  the flow control without exiting the program itself. Begin-rescue-end,
  is the structure used.")
puts

#4
def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }
puts

#5
result("It was passed a parameter to the method and not a block. The &
  is needed there to pass the block.")
