puts 'Chapter 8 - Ex 2'
puts
toc = ['Table of Contents','Chapter 1: Getting Started', 'Chapter 2: Numbers', 'Chapter 3: Letters',
  'page 1', 'page 9', 'page 13']

width = 50
puts toc[0].center(width)
puts 
puts toc[1].ljust(width/2) + toc[4].rjust(width/2)
puts toc[2].ljust(width/2) + toc[5].rjust(width/2)
puts toc[3].ljust(width/2) + toc[6].rjust(width/2)