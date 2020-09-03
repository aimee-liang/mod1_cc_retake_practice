class RestaurantOwner
    attr_accessor :name, :age
    @@all = []

    # initialize with name, age
    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    # class method all
    def self.all
        @@all
    end

end