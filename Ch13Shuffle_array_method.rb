class Array
  
  def shuffle
    array = self
    shuffled = []

    while array.length > 0
      remaining = [] 
      spot = rand(array.length) 

      array.each do |word| 
        if word == array[spot]
          shuffled.push array[spot]
        else
          remaining.push word
        end #if
      end #do
      array = remaining          
    end #while
    return shuffled.join(', ')
  end #def shuffle
end #class


array_a = ['bravo', 'hotel', 'alpha', 'echo', 'bravo', 'golf', '1', 'zulu']
puts array_a.shuffle
