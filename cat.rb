#Create a class called Cat
class Cat
######CREATES METHODS FOR EACH PERAMETER######
  attr_accessor :name, :preferred_food, :meal_time

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

######METOHD NAMES NEED TO HAVE DIFFERENT NAMES THAN
#INITIALIZE PERAMETERS (cannot use 'name','preferred_food',
#'meal_time', or else they will override the attr_accessor)#####
  def eats_at
    puts "#{name} eats at #{meal_time}"
  end

  def meow
    puts "This cat's name is #{name}. He likes to eat #{preferred_food}, at #{meal_time}."
  end

end


#Running two instances of the Cat class each calling out
#Calling instance method eats_at

fluffy = Cat.new('Fluffy','Wiskas', '12pm')
fluffy.eats_at
fluffy.meow

scruffy = Cat.new('Scruffy','Fancy Feast', '5pm')
scruffy.eats_at
scruffy.meow
