
# started over... see ch10shuffleb.rb. It works much better and easier. 



puts 'Shuffle an array'
puts

list_a = ['bravo', 'hotel', 'alpha', 'echo', 'golf', 'romeo', '1', 'zulu']
list_b =[]



def shuffle array, shuffled
  len = array.length
  
  new_order = []
  y = 0 

  array.each do |word|
    x = rand(len)
    new_order[y] = x
    
    y = y+1 
  end #do



  new_order.each do |order| 
    shuffled.push array[order]  
  end #do

puts new_order.join('     ')
puts
puts shuffled.join(', ')  

end #def shuffle


(shuffle(list_a,list_b))