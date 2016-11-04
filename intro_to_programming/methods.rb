#Introduction to Programming
#Chapter - Methods
#Exercises

def result(answer)
  puts answer
end

#1
def greeting(name)
  "Nice to meet you #{name}!"
end

result(greeting("Rui"))

#2
result("2")
result("nil")
result("Joe")
result("four")
result("nil")

#3
def multiply(a, b)
  a * b
end

result(multiply(6, 9))

#4
result("nil")

#5
def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")
result("Yippeee!!!!")

#6
result("The calculate_product method as being called with the worng number
  of arguments. 1 instead of 2")
