Dir.chdir '/Users/avi_kaufman/Desktop/programs/Ch11/move_to_here'

pic_names = Dir['/Users/avi_kaufman/Desktop/programs/Ch11/pics_to_move/*.{JPG,jpg,jpeg}']

puts 'What would you like to call this batch'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files:  "
pic_number = 1

pic_names.each do |name|

  print '.' 
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  if File.exist?(new_name) == true
    puts
    puts "#{new_name} already exists."
    exit
  else
  File.rename name, new_name
  pic_number = pic_number + 1
  
  end
  
end

puts
puts 'Done'

