puts 'Chapter 8 - Ex 1'
puts
puts 'Type a word, hit enter, repeat. Hit enter when you\'re done'
puts 'This will sort the words alphabetically'

words = []

while true
  new_word = gets.capitalize.chop
  
  if new_word.length < 1
    break
  end 

  words.push new_word

end

puts words.sort.join(', ')