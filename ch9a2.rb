puts 'Chapter 9 - Improved ask method'
puts

def ask question
 
 while true
    puts question    
    reply = gets.chomp.downcase
    
      if reply =='yes'
        return true
      end
      
      if reply == 'no'
        return false
      end
        
    puts 'Please ansewr "yes" or "no".'
 end
end

likes = ask 'Do you like tacos?'
puts likes