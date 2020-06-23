require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name:"Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name:"Tom", last_name: "Jonson", hourly_rate: 50)
@store1.employees.create(first_name:"Lisa", last_name: "Abel", hourly_rate: 65)
@store2.employees.create(first_name:"Gabe", last_name: "Seward", hourly_rate: 70)
@store2.employees.create(first_name:"Taylor", last_name: "Toole", hourly_rate: 45)
@store2.employees.create(first_name:"Gary", last_name: "Prince", hourly_rate: 40)