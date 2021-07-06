require "pry"

class Dog
   attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

    def Dog.all 
        @@all
    end

    def Dog.clear_all 
        @@all = []
    end

    # binding.pry
    def Dog.print_all
        # binding.pry
        @@all.each { |d| puts d.name }
    end

end