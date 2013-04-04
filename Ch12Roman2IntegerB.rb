def roman_to_integer roman
  
  digits = {'i' => 1,
            'v' => 5,
            'x'=> 10,
            'l'=> 50,
            'c'=> 100,
            'd'=> 500,
            'm'=> 1000}
            
  integer = 0
  prev = 0
  spot = roman.length - 1
  
  while spot >= 0
    letter = roman[spot].chr.downcase
    spot = spot - 1
    val = digits[letter]
    
    if !val
      puts 'This is not a valid Roman numeral'
      return
    end #if
    
    if val < prev
      val = val * -1
    else
      prev = val
    end #if
    
    integer = integer + val
    
  end #while
  
  integer

end #def  

puts(roman_to_integer('mcmxcix'))    