puts 'Chapter 7 - Leap Year'
puts
puts 'Please enter the starting year'
starty = gets.chop.to_i
puts 'Now please enter the ending year'
endy = gets.chop.to_i

currenty = starty

#leap year if divisible by 4, but not 100, unless divisible by 400

while currenty <= endy
  
  if currenty%4 == 0 &&
    currenty%100 != 0 ||
    currenty%400 == 0
  puts currenty.to_s + ' is a leap year'
  end
  
  currenty = currenty + 1
  
end
