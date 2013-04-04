puts 'Chapter 7 - Deaf grandma'
puts ''
puts 'Say hello to your deaf grandma'

bye = 1 

while true 
  grandson = gets.chomp
  
  if grandson == 'BYE'

    if bye < 3
      puts 'LEAVING SO SOON?'
      bye = bye + 1
    else puts'VISIT AGAIN SOON'
    break

    end 

  elsif grandson == grandson.upcase
    year = (1930 + rand(21))
    puts 'NO, NOT SINCE ' + year.to_s + '!'
    bye = 1

  else
    puts 'HUH?! SPEAK UP SONNY!'
    bye = 1

  end
  
end

