class Manager

    attr_reader :name, :department, :age

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self   
    end

    def employees
        Employee.all.select { |employee| employee.manager == self}
    end

    def hire_employee

    end

    def self.all
        @@all
    end

end
