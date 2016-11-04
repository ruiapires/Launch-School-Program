#Introduction to Programming
#Chapter - Basics
#Exercises

#1.
puts "Rui " + "Pires"

#2.
thousands = 6999 / 1000
hundreds = 6999 % 1000 / 100
tens = 6999 / 10 % 10
ones = 6999 / 100 / 10

puts thousands
puts hundreds
puts tens
puts ones

#3.
movies = {
  :wolf_of_wall_street => 2014,
  :starwars_the_force_awakens => 2015,
  :the_shawshank_redemption => 1994,
  :the_godfather => 1972
}

puts movies[:wolf_of_wall_street]
puts movies[:starwars_the_force_awakens]
puts movies[:the_shawshank_redemption]
puts movies[:the_godfather]

#4.
movies_dates = [2014,2015,1994,1972]

puts movies_dates[0]
puts movies_dates[1]
puts movies_dates[2]
puts movies_dates[3]

#5.
puts 5 * 4 * 3 * 2 * 1
puts 6 * 5 * 4 * 3 * 2 * 1
puts 7 * 6 * 5 * 4 * 3 * 2 * 1
puts 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1

#6.
puts 3.23 * 3.23
puts 15.7888 * 15.7888
puts 1876.12 * 1876.12

#7.
puts "There's an open bracket somewhere. It needs to be closed!"
