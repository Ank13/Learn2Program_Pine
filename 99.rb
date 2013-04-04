puts 'Chapter 7 - 99 Bottles of Beer on the Wall'
puts ''

puts 'How many bottles of beer are on the wall?'
bottles = gets.chomp.to_i

while bottles > 1
  puts bottles.to_s + ' bottles of beer on the wall, ' + bottles.to_s + ' bottles of beer'
  puts 'take one down, pass it around, ' + (bottles - 1).to_s + ' bottles of beer'
  bottles = bottles - 1

end

puts '1 bottle of beer on the wall, 1 bottles of beer, take it down, pass it around'
puts 'No more bottles of bear on the wall'