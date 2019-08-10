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

puts
puts
puts "All The Managers:"
managers = Manager.all
managers.each { |manager| puts manager.name }
puts
puts "-------------------------"
puts
puts "All Manager Departments:"
puts Manager.all_departments
puts
puts "-------------------------"
puts
puts "Average Age of Managers:"
puts Manager.average_age
puts
puts "-------------------------"
puts
puts "Manager 1 Information:"
puts sarah.name
# puts Manager.all[0].name
puts sarah.department
# puts Manager.all[0].department
puts sarah.age
# puts Manager.all[0].age
puts "Sarah's Employees: "
sarah_employees = sarah.employees
sarah_employees.each { |employee| puts employee.name }
# puts Manager.all[0].employees
puts
puts "-------------------------"
puts
puts "Manager 2 Information:"
puts ryan.name
puts ryan.department
puts ryan.age
puts "Ryan's Employees: "
ryan_employees = ryan.employees
ryan_employees.each { |employee| puts employee.name }
puts
puts "-------------------------"
puts
puts "All the Employees:"
employees = Employee.all
employees.each { |employee| puts employee.name }
puts
puts "-------------------------"
puts 
puts "Employee 1 Information:"
# puts arnie.name
puts Employee.all[0].name
# puts arnie.salary
puts Employee.all[0].salary
# puts arnie.manager_name
puts Employee.all[0].manager_name
puts
puts "-------------------------"
puts 
puts "Employee 4 Information:"
puts bob.name
puts bob.salary
puts bob.manager_name
puts
puts "-------------------------"
puts 
puts "Employee Count Pre-Hire: #{Employee.all.length}"
puts "Sarah Hires Jared at $90,000 / year "
sarah.hire_employee("Jared", 99000)
puts "Employee Count Post-Hire: #{Employee.all.length}"
puts
puts "-------------------------"
puts 
puts "These are the Employees who are paid over 90000 in salary:"
employees = Employee.paid_over(90000)
employees.each { |employee| puts employee.name }
puts
puts "This is the first employee whose manager is in the Legal Dept:"
puts Employee.find_by_department("Legal").name
puts
puts "These are the employees within a tax bracket: "
employees = arnie.tax_bracket(6000)
employees.each { |employee| puts employee.name }
puts

binding.pry
puts "done"
