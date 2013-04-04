#this is the long way... see version B for better way

def roman_to_integer roman

  #pattern
  #I II III IV V VI VII VIII IX   starts with I or V
  #X XX XXX XL L LX LXX LXXX XC   starts with X or L
  #C CC CCC CD D DC DCC DCCC CM   starts with C or D

#patterns
  ones = ['I','V','X']
  tens = ['X','L','C']
  huns = ['C','D','M']
  thou = ['M','?','?']

#integer places
  o = 0
  t = 0
  h = 0
  k = 0

  len = roman.length

  while len > 0

#thousands
    if roman[0].chr == thou[0]
      k = k+1
      roman = roman[1..(len-1)]    

#huns
    elsif roman[0].chr == huns[0] &&
          roman[1].chr != huns[2] &&
          roman[1].chr != huns[1]
      h = h+1
      roman = roman[1..(len-1)]
    elsif roman[0].chr == huns[1]
      h = h+5
      roman = roman[1..(len-1)]
    elsif roman[0].chr == huns[0] &&
          roman[1].chr == huns[1]
      h = h+4
      roman = roman[2..(len-1)]
    elsif roman[0].chr == huns[0] &&
          roman[1].chr == huns[2]
      h = h+9      
      roman = roman[2..(len-2)]    

#tens
    elsif roman[0].chr == tens[0] &&
          roman[1].chr != tens[2]
          roman[1].chr != tens[1]
      t = t+1
      roman = roman[1..(len-1)]
    elsif roman[0].chr == tens[1]
      t = t+5
      roman = roman[1..(len-1)]
    elsif roman[0].chr == tens[0] &&
          roman[1].chr == tens[1]
      t = t+4
      roman = roman[2..(len-1)]
    elsif roman[0].chr == tens[0] &&
          roman[1].chr == tens[2]
      t = t+9      
      roman = roman[2..(len-2)]

#ones    
      elsif roman == 'VIII'
        o = 8
        len = 0
      elsif roman == 'VII'
        o = 7
        len = 0
      elsif roman == 'III'
        o = 3
        len = 0
      elsif roman == 'IX'
        o = 9
        len = 0        
      elsif roman == 'VI'
        o = 6
        len = 0        
      elsif roman == 'IV'
        o = 4
        len = 0
      elsif roman == 'II'
        o = 2
        len = 0
      elsif roman == 'I'  
        o = 1
        len = 0
      elsif roman == 'V'
        o = 5
        len = 0

    else 
      break
      
    end #if
  end #while
  puts (k*1000) + (h*100) + (t*10) + (o*1)
end #def

roman_to_integer 'MMCCCXXXII' #2332
roman_to_integer 'MMCDXXXII' #2432
roman_to_integer 'MMCXXXIX' #2139
roman_to_integer 'MMCMXXXIV' #2934
