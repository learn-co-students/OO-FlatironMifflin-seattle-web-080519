require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

sarah = Manager.new("Sarah", "Engineering", 29)
ryan  = Manager.new("Ryan", "Sales", 35)
joe = Manager.new("Joe", "Legal", 49)
rebecca = Manager.new("Rebecca", "HS&E", 37)

arnie = Employee.new("Arnie", 30000, sarah)
chris = Employee.new("Chris", 40000, ryan)
alex = Employee.new("Alex", 35000, sarah)
bob = Employee.new("Bob", 70000, joe)
alice = Employee.new("Alice", 92500, sarah)



binding.pry
puts "done"
