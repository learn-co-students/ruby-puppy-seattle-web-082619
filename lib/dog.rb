class Dog
    @@all  = []
    attr_accessor :name

    def initialize(name)
        @name = name
        save()
    end
    
    def Dog.all()
        return @@all
    end
    
    def Dog.clear_all()
        @@all.clear
    end

    def Dog.print_all()
        @@all.each do |ele|
            puts ele.name
        end
    end

    def save()
        @@all << self
    end
end