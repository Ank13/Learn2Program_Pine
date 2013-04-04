list_a = [
  '/Users/avi_kaufman/Music/iTunes/iTunes Media/Music/Chasing Summer/Chasing Summer/1',
  '/Users/avi_kaufman/Music/iTunes/iTunes Media/Music/Eric Clapton/Old Sock/2',
  '/Users/avi_kaufman/Music/iTunes/iTunes Media/Music/The Magic Numbers/3',
  '/Users/avi_kaufman/Music/iTunes/iTunes Media/Music/The Cave Singers/Naomi/4',
  '/Users/avi_kaufman/Music/iTunes/iTunes Media/Music/Compilations/16 Biggest Hits_ Johnny Cash/5',
  '/Users/avi_kaufman/Music/iTunes/iTunes Media/Music/Leftover Cuties/Places to Go/6',
  '/Users/avi_kaufman/Music/iTunes/iTunes Media/Music/Leftover Cuties/Places to Go/7' ]
list_b =[]


def shuffle array, shuffled
  
  len = array.length 
  spot = rand(len) #which spot we're moving now
  remaining = [] #put the rest of the words here after pushing the random word

  shuffled_len = shuffled.length

  if shuffled_len >= 1
    album_this = array[spot].split '/' #split path into an array. spot 7 is the album name
    album_last = shuffled[shuffled_len -1 ].split '/'
      if album_this[7] == album_last[7] && len >= 3
      remaining.push array[spot] #move the random song to the remaining array if same album as previous song
      else  
      shuffled.push array[spot] #move the random song path to the shuffled array
      end
  else 
      shuffled.push array[spot] #move the random song path to the shuffled array  
  end
      
  #stop running when nothing left to shuffle
  if array.length == 1
    return shuffled
  end
  
  #move rest of the words to the remaining array
  array.each do |song| 
    if song != array[spot]
    remaining.push song
    end #if
  end #do

  #recursive on the remaining array
  shuffle(remaining,shuffled)

end #def shuffle

puts
puts(shuffle(list_a,list_b))
puts