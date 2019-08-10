class Employee

    attr_reader :name, :salary, :manager

    @@all = []

    def initialize(name, salary, manager)
        @salary = salary
        @name = name
        @manager = manager
        @@all << self
    end

    def manager_name
        binding.pry
    end

    def self.all
        @@all
    end

end
