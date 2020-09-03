class Recipe
    attr_reader :name
    attr_accessor :description
    @@all = []

    # initialized with a name and description
    def initialize(name, description)
        @name = name
        @description = description
        @@all << self
    end

    # class method all
    def self.all
        @@all
    end

    # menu items method returns an array of all Menu Item instances for the recipe

    # restaurants returns an array of all restaurant instances that have recipe in menu

end