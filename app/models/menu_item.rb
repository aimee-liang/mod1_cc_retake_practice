class MenuItem
    attr_accessor :price
    @@all = []

    # initialize with restaurant instance, recipe instance, and price(float)
    def initialize(restaurant, recipe, price)
        @restaurant = restaurant
        @recipe = recipe
        @price = price.to_f
    end

    def self.all
        @@all
    end

end