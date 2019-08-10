require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

sarah = Manager.new("Sarah", "Engineering", 29)
ryan  = Manager.new("Ryan", "Sales", 35)
joe = Manager.new("Joe", "Legal", 49)
rebecca = Manager.new("Rebecca", "HS&E", 37)

binding.pry
puts "done"
