list_a = ['bravo', 'hotel', 'alpha', 'echo', 'bravo', 'golf', '1', 'zulu']
list_b =[]


def shuffle array, shuffled
  
  len = array.length 
  spot = rand(len) #which spot we're moving now
  remaining = [] #put the rest of the words here after pushing the random word
  shuffled.push array[spot] #move random word to the shuffled array
  
  #stop running when nothing left to shuffle
  if array.length == 1
    return shuffled.join(', ')
  end
  
  #move rest of the words to the remaining array
  array.each do |word| 
    if word != array[spot]
    remaining.push word
    end #if
  end #do

  #recursive on the remaining array
  shuffle(remaining,shuffled)
  

end #def shuffle

puts
puts(shuffle(list_a,list_b))
puts