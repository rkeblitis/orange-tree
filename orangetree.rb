class OrangeTree

  attr_accessor :height, :age, :fruit

  def initialize
    @height = 2
    @age = 0
    @fruit = 0
  end

# one_year_passes method: that when called ages the tree 1 year
  def one_year_passes
    @age = @age + 1
    if @age < 11
      puts "\nThe Orange Tree is #{@age} years old"
    else
    end
  end

# height method: that returns the height of the tree
  def height
    @height = age * 2
    if @age < 11
      puts "and is #{@height} inches tall"
    else
      puts "\nI'm sorry but your tree has met its maker"
    end
  end

#count the oranges method: after 2 year
#the tree starts 20 peices of fruit for the first year, then proudces
# 2x the amount each subquental year
  def fruit
    if @age <= 2
      @fruit = 0
      puts "But hasn't produced oranges yet :( "
    elsif
      @age == 3
      @fruit = 3 * @age
      puts "and has finally produced #{@fruit} oranges"
      puts "Yay! Nom Nom Nom!"
    elsif
      @age < 11
      @fruit = 3 * @age
      puts "Now it has #{@fruit} oranges!"
    else
      #@age >= 11
      puts "You can't pick fruit from a dead tree."
    end
  end

# pick an orange method reduces the number of the fruitcount when
# when oranges are picked, unil there are none left to pick
  def pick
    if age < 11
      @fruit = @fruit - 1
      puts "You Picked a fruit, how was it?"
      puts "There are only #{@fruit} left"
    else
      #puts "No fruit to pick"
    end
  end
end

ot = OrangeTree.new

#if ot.one_year_passes == true
  #ot.fruit = 0
#end
while ot.age < 11
  ot.one_year_passes
  ot.height
  ot.fruit
  ot.pick
end
