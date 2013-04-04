filename = 'CH12Birthdays.txt'
birthdays_string = File.read filename

birthday_hash = Hash.new

birthdays_string.each_line do |line|  
  len = line.chomp.length

  first_comma = 0
  while line[first_comma].chr != ',' && first_comma < len
    first_comma = first_comma + 1
  end #while 

  name = line.chomp[0..(first_comma-1)]
  date = line.chomp[-(len-(first_comma+2))..-1]

  birthday_hash[name] = date
end #do

puts 'Whose birthday do you want to know?'
lookup = gets.chomp

if birthday_hash[lookup] == nil
  puts 'That name is not on my list'
else
  puts birthday_hash[lookup]
end
