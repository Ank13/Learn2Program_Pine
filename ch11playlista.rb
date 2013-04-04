Dir.chdir '/Users/avi_kaufman/Desktop/programs/Ch11/playlists'

def shuffle array, shuffled
  
  len = array.length 
  spot = rand(len) #which spot we're moving now
  remaining = [] #put the rest of the words here after pushing the random word
  shuffled.push array[spot] #move random word to the shuffled array
  
  #stop running when nothing left to shuffle
  if array.length == 1
    return shuffled
  end
  
  #move rest of the words to the remaining array
  array.each do |word| 
    if word != array[spot]
    remaining.push word
    end #if
  end #do

  #recursive on the remaining array
  shuffle(remaining,shuffled)
end #def shuffle

  
songs = Dir['/Users/avi_kaufman/Music/iTunes/iTunes Media/Music/**/*.{mp4,mp3,m4a,m4p,ogg}'] 
songs_shuffled =[]

puts "#{songs.length} songs have been found for the shuffle"
puts 'What would you like to call this playlist?'
list_name = gets.chomp
file_name = "#{list_name}.m3u" #change from txt to m3u when done testing

shuffle(songs, songs_shuffled)

File.open file_name, 'w' do |f|
  songs_shuffled.each do |song|
    f.write song+"\n"
  end
end

puts 'done'