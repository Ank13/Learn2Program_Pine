puts 'Chapter 10 - build a sort function'
puts

def sorty some_array #wraps recursive_sort
  find_smallest some_array, []
end


def find_smallest array, sorted_array
len = array.length
x = len-len
y = 0
unsorted_array = []

 if array.length <= 0
     return sorted_array
 end

 while true #moves the smallest from the array to the sorted array
  if x == len - 1  #stops checking when checked against full array
    smallest = array[y] 
    sorted_array.push smallest #pushes smallest word to sorted array
      array.each do |word| #move words that are not the smallest to unsorted array
         if word != smallest
         unsorted_array.push word
         end #if
      end #each
    break
  elsif array[y] <= array[x+1]  #checks chosen word against whole array one by one
    x = x + 1    
  else  #chooses next word to check if it's the smallest
    y = y + 1
    x = len - len
  end #if
 end #while
 
 find_smallest unsorted_array, sorted_array
 
end #def


list_a = ['bravo', 'hotel', 'alpha', 'echo', 'golf', 'romeo', '1', 'zulu']
puts(sorty(list_a).join(', '))



