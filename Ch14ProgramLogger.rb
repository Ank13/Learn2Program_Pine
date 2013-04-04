$nesting = 0

def log(block_description,&block)
  indent = '  '*$nesting  
  puts "#{indent}Starting '#{block_description}'"
    $nesting = $nesting + 1
    result = block.call
    $nesting = $nesting - 1
  puts "#{indent}Finished '#{block_description}', returning: #{result}"
end



log 'outer block' do
  log 'second block' do 
    log 'third block' do
      'third block return'
    end
    'second block return'
  end 
  'outer block return'
end
    


