puts 'Chapter 10 - Count size of continent'

m = 'land'
o = 'water'

world = [
  [o,o,o,o,o,o,o,o,o,o,o],
  [m,o,o,o,m,m,o,o,o,o,o],
  [o,m,o,o,o,o,o,o,m,m,o],
  [o,o,m,m,o,o,o,o,o,m,o],
  [o,o,o,m,o,m,m,o,o,o,o],
  [o,o,o,o,m,m,m,m,o,o,o],
  [o,o,o,m,m,m,m,m,m,m,o],
  [o,o,o,m,m,o,m,m,m,o,o],
  [o,o,o,o,o,o,m,m,o,o,o],
  [o,m,o,o,o,m,o,o,o,o,o],
  [o,o,o,o,o,o,o,o,o,o,o]]
  
def con_size world, x, y
  
  if world [x][y] != 'land'
    return 0
  end
  
  size = 1
  world [x][y] = 'counted land'
  
  size = size + con_size(world, x-1, y-1)
  size = size + con_size(world, x, y-1)
  size = size + con_size(world, x+1, y-1)
  size = size + con_size(world, x-1, y)
  size = size + con_size(world, x+1, y)
  size = size + con_size(world, x-1, y+1)
  size = size + con_size(world, x, y+1)
  size = size + con_size(world, x+1, y+1)
  
  size
  
end

puts con_size(world, 5, 5)