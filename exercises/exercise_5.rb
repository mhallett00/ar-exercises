require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@company_revenue = Store.sum(:annual_revenue)
@average_revenue = Store.average(:annual_revenue)
@stores_over_1mil = Store.where(annual_revenue: 1000000..Float::INFINITY).count

puts "The company annual revenue is $#{@company_revenue.round()}"
puts "The average revenue per store is $#{@average_revenue.round()}"
puts "There are #{@stores_over_1mil} stores that have over $1mil in revenue"

