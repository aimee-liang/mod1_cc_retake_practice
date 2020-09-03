class Restaurant
    attr_accessor :name, :star_rating
    attr_reader :owner
    @@all = []

    # initialized with RestaurantOwner, name, star_rating
    def initialize(owner, name, star_rating)
        @owner = owner
        @name = name
        @star_rating = star_rating
        @@all << self
    end

    # class method all
    def self.all
        @@all
    end

end