puts 'Chapter 9 - Old school Roman numerals'
puts

def romanize number
    m = number/1000
    d = (number%1000)/500
    c = (number%500)/100
    l = (number%100)/50
    x = (number%50)/10
    v = (number%10)/5
    i = (number%5)/1
    
    puts number.to_s + ' to old-school roman = '+'M'*m + 'D'*d + 'C'*c + 'L'*l + 'X'*x + 'V'*v + 'I'*i
end

def romanmod number
  thous = number / 1000
  hund = number%1000/100
  tens = number%100/10
  ones = number%10/1
  
  roman = ''
  roman = roman + 'M'*thous
  
  if hund == 9
    roman = roman + 'CM'
  elsif hund == 4
    roman = roman + 'CD'
  else 
    roman = roman + 'D' * (number%1000/500)
    roman = roman + 'C' * (number%500/100)
  end
  
  if tens == 9
    roman = roman + 'XC'
  elsif tens == 4
    roman = roman + 'XL'
  else 
    roman = roman + 'L' * (number%100/50)
    roman = roman + 'X' * (number%50/10)
  end
  
  if ones == 9
    roman = roman + 'IX'
  elsif ones == 4
    roman = roman + 'IV'
  else 
    roman = roman + 'V' * (number%10/5)
    roman = roman + 'I' * (ones%5/1)
  end
  
  puts '        modern roman = ' + roman
  
end

romanize 1
romanmod 1
romanize 3
romanmod 3
romanize 5
romanmod 5
romanize 100
romanmod 100
romanize 93
romanmod 93
romanize 450
romanmod 450
romanize 1023
romanmod 1023
romanize 1901
romanmod 1901
romanize 3256
romanmod 3256

puts 'Now you give me a number'
x = gets.chomp.to_i
romanize x.to_i
romanmod x.to_i