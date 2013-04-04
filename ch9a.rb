puts 'Chapter 9 - Improved ask method'
puts

def ask question
 while true
    puts question    
    reply = gets.chomp.downcase
    if (reply == 'yes' || reply == 'no')
    
      if reply =='yes'
        return true
      else 
        return false
      break
      end
      
    else 
      puts 'Please ansewr "yes" or "no".'
    end
  end
end

ask 'Do you like tacos?'
ask 'Do you like burritos'
wets_bed = ask 'Do you wet the bed?'
puts wets_bed