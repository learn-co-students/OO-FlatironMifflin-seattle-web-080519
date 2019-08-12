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
        it "should be a string" do
            arnie.name.should be_a(String)
        end
    end

    describe "#salary" do
        it "should return the salary of the employee" do
            expect(alexander.salary).to eq(35000)
        end
        it "should be a number" do
            alexander.salary.should be_a(Fixnum)
        end
    end

    describe "#manager" do
        it "should be an instance of a the Manager class" do
            bob.manager.should be_instance_of(Manager)
        end
    end

    describe "#manager_name" do
        it "should return the name of the manager of the employee" do
            expect(alice.manager.name).to eq("Sarah")
        end
        it "should be a string" do
            alice.manager.name.should be_a(String)
        end
    end
        
end