puts "Chapter 2 - numbers"

puts 1.0 + 2.0
puts 2.0 * 3.0
puts 5.0 - 8.0
puts 9 / 2
puts ''
puts "hours in a year"
puts 365 * 24
puts''
puts "minutes in a decade"
puts 60 * 24 * 365 *10 + 60*24*2
puts ''
puts "my age in seconds"
puts ((31/4)+365-(31+17+2)+(365*31))*24*60*60
puts ''
puts "authors age"
puts 1025000000 / 60 / 60 / 24 / 365
puts ''
puts "my age in seconds - automatic updates"
puts Time.new - Time.gm(1981,4,17,6,0)
