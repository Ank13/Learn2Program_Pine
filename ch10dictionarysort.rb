list_a = ['bravo', 'hotel', 'Alpha', 'echo', 'golf', 'romeo', '1', 'Zulu']
list_b =[]

def sorty unsorted, sorted
  
  if unsorted.length <= 0
    return sorted
  end
  
  test_word = unsorted.pop
  still_unsorted = []
  
  unsorted.each do |word|
    if word.downcase < test_word.downcase
      still_unsorted.push test_word
      test_word = word
    else
      still_unsorted.push word
    end
  end
    
  sorted.push test_word
  
  sorty still_unsorted, sorted  #recursion
end


puts(sorty(list_a,list_b))