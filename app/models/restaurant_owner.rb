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

    # - returns an array of `Restaurant` instances associated with the `RestaurantOwner` instance.
    def restaurants
    end

    # - returns an array of `MenuItem` instances associated with any of the `RestaurantOwner`s `Restaurant` instances.

    def menu_items
    end

end