puts 'Excercise 5.6'
puts 'What\'s your first name?'
first = gets.chomp
puts first + ', what\'s your middle name?'
middle = gets.chomp
puts first + ' '+ middle + ', what\'s your last name?'
last = gets.chomp
puts 'Hello ' + first + ' ' + middle + ' ' + last + '!'
puts ''
puts first + ', what\'s your favorite number?'
number = gets.chomp.to_i
better_num = number + 1
puts 'Really? ' + number.to_s + '? I suppose that\'s a fine number.'
puts better_num.to_s + ' is better though.'
