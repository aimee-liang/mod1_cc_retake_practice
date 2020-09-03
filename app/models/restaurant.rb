class Restaurant
    attr_accessor :name, :star_rating
    @@all = []

    # initialized with RestaurantOwner, name, star_rating
    def initialize(RestaurantOwner, name, star_rating)
        @RestaurantOwner = RestaurantOwner
        @name = name
        @star_rating = star_rating
        @@all << self
    end

    # class method all
    def self.all
        @@all
    end

end