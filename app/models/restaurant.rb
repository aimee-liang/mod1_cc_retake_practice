class Restaurant
    attr_accessor :owner, :name, :star_rating
    @@all = []

    def initialize(owner, name, star_rating)
        @owner = owner
        @name = name
        @star_rating = star_rating
        @@all << self
    end

    def self.all
        @@all
    end

    def menu_items
        MenuItem.all.select{|menu_items| menu_items.restaurant == self}
    end

    def owner
        self.all.select{|restaurant| restaurant.restaurant_owner}
    end

    def recipes
        self.menu_items.map{|menu_items| menu_items.recipe}
    end

    def has_dish?(recipe)
        self.menu_items.include?(recipe)
    end

    def self.highest_rated
        self.all.max_by{|restaurant| restaurant.star_rating}
    end

end