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
        self.manager.name
    end

    def self.paid_over(salary)
        self.all.select { |employee| employee.salary > salary }
    end

    def self.find_by_department(department)
        self.all.find { |employee| employee.manager.department == department }
    end

    def tax_bracket(num)
        # refactored this to take an argument to make this dyanmic based on the data set
        # should the array include the employee itself? 
        # i will assume so until told otherwise
        salary = self.salary 
        Employee.all.select { |employee| employee.salary > salary-num && employee.salary < salary+num }
    end

    def self.all
        @@all
    end

end