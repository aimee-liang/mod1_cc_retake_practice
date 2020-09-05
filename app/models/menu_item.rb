class MenuItem
    attr_accessor :price
    attr_reader :restaurant, :recipe
    
    @@all = []

    def initialize(restaurant, recipe, price)
        @restaurant = restaurant
        @recipe = recipe
        @price = price.to_f
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_expensive_item
        self.all.max_by{|menu_item| menu_item.price}
    end

end