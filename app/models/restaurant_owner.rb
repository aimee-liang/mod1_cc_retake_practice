class RestaurantOwner
    attr_accessor :name, :age
    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def restaurants
        Restaurant.all.select{|restaurant| restaurant.owner == self}
    end

    def menu_items
        self.restaurants.map{|restaurant| restaurant.menu_items}
    end

    def self.average_age
        self.all.sum{|owner| owner.age} / self.all.length
    end

    def sell_restaurant(restaurant, buyer)
        self.restaurants.select do |r_i| 
            if r_i = restaurant
                r_i.owner = buyer
            else
                return false
            end
        end
    end

end