require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Employee
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, inclusion: { in: 40..200 }
  validates :store_id, presence: true
end

class Store
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true }, inclusion: { in: 0..Float::INFINITY}
  
  # custom validation checking for at least one of men's/women's apparel
  validate :men_or_women_apparel_sold
  def men_or_women_apparel_sold
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, "must have at least one apparel type")
      errors.add(:womens_apparel, "must have at least one apparel type")
    end
  end
 
end

puts "EMPLOYEE VALIDATION"
puts "--------------------"
puts @store1.employees.create(first_name: "Addel", last_name: "Frisch", hourly_rate: 200).valid?


puts "STORE VALIDATION"
puts "------------------"

print "Enter a store name: "
@store_name = gets.chomp

store = Store.create(name: @store_name)

store.valid? #strangely requies a separate store.valid? statement instead of tacking onto Store.create above.

store.errors.messages.each do |error|
  pp error
end

