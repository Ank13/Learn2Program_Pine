puts 'What year were you born?'
year = gets.chomp

puts 'Which month were you born?'
month = gets.chomp

puts 'Which day were you born?'
day = gets.chomp

birthday = Time.local(year, month, day)

age = (Time.new - birthday)
years = age/60/60/24/365

puts 'Spank!' * years