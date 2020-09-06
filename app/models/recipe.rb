class Recipe
    attr_reader :name
    attr_accessor :description
    @@all = []

    def initialize(name, description)
        @name = name
        @description = description
        @@all << self
    end

    def self.all
        @@all
    end

    def menu_items
        MenuItem.all.select{|menu_item| menu_item.recipe == self}
    end

    def restaurants
        self.menu_items.map{|menu_item| menu_item.restaurant}
    end

    def average_price
        self.menu_items.sum{|menu_item| menu_item.price} / self.menu_items.length
    end

    def highest_price
        self.menu_items.map{|menu_item| menu_item.price}.max
    end

    def cheapest_restaurant
        self.menu_items.min_by{|menu_item| menu_item.price}
    end

    def self.inactive
        MenuItem.all.reject{|menu_item| menu_item.recipe != nil}
    end

end