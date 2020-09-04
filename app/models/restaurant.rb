class Restaurant
    attr_accessor :name, :star_rating
    attr_reader :owner
    @@all = []

    def initialize(Restaurant_Owner, name, star_rating)
        @Restaurant_Owner = RestaurantOwner
        @name = name
        @star_rating = star_rating
        @@all << self
    end

    def self.all
        @@all
    end

    def menu_items
        MenuItems.all.select{|menu_items| menu_items.restaurant == self}
    end

    def owner
    end

    def recipes
        self.menu_items.map{|menu_items| menu_items.recipes}
    end


end