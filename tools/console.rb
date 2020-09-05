# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

anna = RestaurantOwner.new("Anna", 54)
bosco = RestaurantOwner.new("Bosco", 35)
carlos = RestaurantOwner.new("Carlos", 40)

noodle = Recipe.new("pasta", "spaghetti bolognese")
chicken = Recipe.new("chicken sandwich", "spicy and crispy chicken sandwich")
bread = Recipe.new("breadstick", "fresh breadsticks")
kale = Recipe.new("salad", "refreshing kale salad")

resta = Restaurant.new(anna, "Resta", 5)
restb = Restaurant.new(carlos, "Restb", 4)
restc = Restaurant.new(bosco, "Restc", 1)
restd = Restaurant.new(carlos, "Restd", 3)

pasta = MenuItem.new(resta, noodle, 10.75)
sandwich = MenuItem.new(restb, chicken, 5)
breadstick = MenuItem.new(restc, bread, 20)
salad = MenuItem.new(resta, kale, 10.75)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
