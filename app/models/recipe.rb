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

    # - `Recipe#menu_items`
    #     - returns an array of all the `MenuItem` instances for the `Recipe`.
    def menu_items
        MenuItem.all.select{|menu_items| menu_items.recipe == self}
    end

    # restaurants returns an array of all restaurant instances that have recipe in menu
    # def restaurants
        # self.menu_items.
    # end

end