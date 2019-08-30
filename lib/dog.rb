# Add your code here
require 'pry'

class Dog
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        self.save #instead of manually pushing each instance, we can call the
        #class method, .save, which we have defined later in the development process
        
    end

    def self.all
        @@all 
    end 

    def self.clear_all
        @@all = []
    end

    def self.print_all
        print_all = ""
        @@all.each do |dog|
            print_all = print_all + "#{dog.name}\n"
            
        end
        puts print_all #the test here says that the output goes to stdout
    end
   
    def save
        @@all << self
    end
end