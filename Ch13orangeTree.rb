class OrangeTree
  
  def initialize
    @height = 1
    @age = 0
    @orange_count = 0
    puts "A #{@height}-foot tall orange sappling has been planted."
  end #def
  
  def one_year_passes
    @orange_count = 0
    @age = @age + 1
    if @age < 3 
      @height = @height + 2
    elsif @age >= 3 && @age < 7
      @height = @height + 2
      @orange_count = 10
    elsif @age >= 7 && @age < 15
      @height = @height + 1
      @orange_count = 25
    elsif @age >= 15 && @age < 20
      @height = @height + 1
      @orange_count = 15
    elsif @age >= 20
      puts 'This tree has died. Please plant a new one'
      exit
    end #if
    puts
    puts "A year passes. The tree is now #{@age} years old, and #{@height} feet tall."
  end #def
  
  def count_the_oranges
    puts "There are #{@orange_count} oranges on the tree."
  end #def
  
  def pick_an_orange
    if @orange_count > 0
      @orange_count = @orange_count - 1
      puts "Mmm...that was delicious. There are #{@orange_count} oranges left."
    else
      puts 'There aren\'t any oranges on the tree to pick.'
    end #if  
  end #def
    
end#class

tree = OrangeTree.new

21.times do 
 tree.one_year_passes
 tree.count_the_oranges
 tree.pick_an_orange
end
