# require 'rspec/autorun'
# require 'pry'
require '../lib/Employee.rb'
require '../lib/Manager.rb'

describe Employee do

    # create the instances of the models 
    # need to create a manager first because an employee belongs to a manager
   
    sarah = Manager.new("Sarah", "Engineering", 29)
    ryan  = Manager.new("Ryan", "Sales", 35)
    joe = Manager.new("Joe", "Legal", 49)
    rebecca = Manager.new("Rebecca", "HS&E", 37)

    arnie = Employee.new("Arnie", 30000, sarah)
    chris = Employee.new("Chris", 40000, ryan)
    alexander = Employee.new("Alexander", 35000, sarah)
    bob = Employee.new("Bob", 70000, joe)
    alice = Employee.new("Alice", 92500, sarah)

    describe "#name" do
        it "should return the name of the employee" do
            expect(arnie.name).to eq("Arnie")
        end
    end

    describe "#salary" do
        it "should return the salary of the employee" do
            expect(arnie.salary).to eq(30000)
        end
    end

    describe "#manager_name" do
        it "should return the name of the manager of the employee" do
            expect(arnie.manager.name).to eq("Sarah")
        end
    end
        
end