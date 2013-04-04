def test_blocks
  puts "in test_blocks"
  yield
end
 
test_blocks { puts "in the block" }
 
# Output:
# in test_blocks