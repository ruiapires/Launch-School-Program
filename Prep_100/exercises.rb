#Introduction to Programming
#Chapter - Exercises
#Exercises

def result(answer)
  puts answer
end

#1
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each { |n| puts n}
puts

#2
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each { |n| puts n if n > 5}
puts

#3
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].select { |num| num % 2 != 0 }
puts arr
puts

#4
result(arr.push(11))
puts
result(arr.unshift(0))
puts

#5
result(arr.pop)
puts
result(arr << 3)
puts

#6
result(arr.uniq)
puts

#7
result("The difference is that an Array is used to order data and the
  Hashes are formed with a key-value pair which is referenced by a key.")
puts

#8
my_hash = { "Joe Doe" => 45, "John Doe" => 34 }
my_hashSymbol = { Joe_Doe: 45, John_Doe: 34 }
puts my_hash
puts
puts my_hashSymbol
puts

#9
h = { a: 1, b: 2, c: 3, d: 4 }
puts h[:b]
puts
h[:e] = 5
puts h
puts
h.delete_if { |key, value| value < 3.5}
puts h
puts

#10
result("Yes!")
hashWithArr = { name: ["Sarah", "Peter"]}
arrWithHash = [ { name: "Sarah"}, { name: "Peter"} ]
puts
result(hashWithArr)
puts
result(arrWithHash)
puts

#11

#12
contact_data = [
  ["joe@email.com", "123 Main st.", "555-123-4567"],
  ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]
]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]
result(contacts)
puts

#13
result(contacts["Joe Smith"][:email])
result(contacts["Sally Johnson"][:phone])
puts

#14
contact_data2 = [
  ["joe@email.com", "123 Main st.", "555-123-4567"],
  ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]
]

contacts2 = {"Joe Smith" => {}, "Sally Johnson" => {}}
data = [:email, :address, :phone]

contacts2.each_with_index do |(k,v), index|
  data.each do |items|
    v[items] = contact_data2[index].shift
  end
end
result(contacts2)
puts

#15
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if {|word| word.start_with?("s")}
result(arr)
puts

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if {|word| word.start_with?("s", "w")}
result(arr)
puts

#16
a =
  ['white snow', 'winter wonderland', 'melting ice',
   'slippery sidewalk', 'salted roads', 'white trees']

a = a.flatten.map { |word| word.split }

result(a)
puts

#17
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

result("These hashes are the same. ")
