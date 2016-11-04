#Introduction to Programming
#Chapter - Hashes
#Exercises

def result(answer)
  puts answer
end

#1
family = { uncles: ["bob", "joe", "steve"],
           sisters: ["jane", "jill", "beth"],
           brothers: ["frank","rob","david"],
           aunts: ["mary","sally","susan"]
          }
immediate_family = family.select { |k, v| (k == :sisters) || (k == :brothers)}

p immediate_family.values.flatten
puts

#2
result(".merge! is a destructive method. With .merge! we add contents of
  other_hash to hsh, modifying it. With .merge will return a new hash containing the contents
  of other_hash.")
puts

#3
family.each_key { |k| p k }
puts
family.each_value { |v| p v }
puts
family.each { |key, value| puts "#{key}: #{value}" }
puts

#4
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
result(person[:name])
puts

#5
result(family.has_value?(["bob", "joe", "steve"]))
puts

#6
words =  [
  'demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon'
]

anagram = {}

words.each do |word|
  key = word.split('').sort.join
  if anagram.has_key?(key)
    anagram[key].push(word)
  else
    anagram[key] = [word]
  end
end

anagram.each do |k, v|
  p v
end
puts

#7
result("The first hash uses a symbol as key and the second use the x
  variable as key.")
puts

#8
result("B")
