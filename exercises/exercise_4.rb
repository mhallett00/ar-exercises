require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true);

store = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false);

store = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true);

# fetch & display men's stores
@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each do |store|
  puts "The #{store.name} location sells men's apparel and has revenue of $#{store.annual_revenue}"
end

#fetch & display women's stoes under $1mil revenue
@womens_stores = Store.where(womens_apparel: true, annual_revenue: 0...1000000)
@womens_stores.each do |store|
  puts "The #{store.name} location sells women's apparel and has revenue of $#{store.annual_revenue}"
end
