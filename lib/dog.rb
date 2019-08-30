require 'pry'
class Dog
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        # @@all << self
        self.save
        # binding.pry
    end

    # def self
    #     @@all
    # end

    def self.all
        @@all
    end

    def self.clear_all
        @@all.clear
    end

    def self.print_all
        self.all.each {|dog| puts "#{dog.name}"}
    end

    def save
        @@all << self
    end

end
# Pry.start

# 0