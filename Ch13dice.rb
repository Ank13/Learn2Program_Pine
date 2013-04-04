class Die
  
  def initialize
    roll
  end
  
  def roll
    @number_showing = 1 + rand(6)
  end
  
  def showing
    @number_showing
  end
  
  def cheat num
    if num == (1..6)
      @number_showing = num
    else
      @number_showing = 'wha-what?'
    end
  end
  
end

die = Die.new
puts die.showing
die.roll
puts
die.cheat(7)
puts die.showing
  