#Introduction to Programming
#Chapter - Arrays
#Exercises

def result(answer)
  puts answer
end

#1
arr = [1, 3, 5, 7, 9, 11]
number = 3

puts "#{number} is in the arr" if arr.include?(number)
puts

#2
result("In the second line it returns a combination of arrays made
  by the method .product. In the last line the number one is returned,
  since it was deleted by the method applied(.delete), because it was
  the last element of the first index in the array. The value of
  the arr was changed in the second line and has now that value minus
  the '1' deleted in the last line of code")
puts
result("On the second code, instead of appending a number at a time
  to each element of arr, it appended all the numbers in a single array
  nested inside of another nested array with one of the elements of the
  arr. The value of arr after the last line (with the .delete method
  applied) changed because the first nested array lost the nested array
  numbers.")
puts

#3
arr = [["test", "hello", "world"],["example", "mem"]]
result(arr[1].first)
puts

#4
result("3. The position of the number 5")
result("undefined method `[]'")
result("8. The number at the index 5")
puts

#5
result("e")
result("A")
result("nil")
puts

#6
result("We can't use a string to set a value. To fix this we should
  use an integer to index an array. names[3] = 'Jody'")
puts

#7
arr = [1, 2, 3, 4, 5, 6]
new_arr = []

arr.map do |num|
  new_arr.push num + 2
end

p arr
p new_arr
