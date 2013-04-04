
def grandfather_clock(&code)
  if Time.new.hour == 0
    hour = 12
  elsif Time.new.hour <= 12
    hour = Time.new.hour
  else
    hour = Time.new.hour -12
  end
  hour.times do
    code.call
  end
end #def

grandfather_clock do
  print 'Dong!'
end
puts
puts Time.new
