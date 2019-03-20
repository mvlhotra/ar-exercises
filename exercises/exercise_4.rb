require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

store = Store.create
store.name = "Surrey"
store.annual_revenue = 224000
store.mens_apparel = 0
store.womens_apparel = 1
store.save

store = Store.create
store.name = "Whistler"
store.annual_revenue = 1900000
store.mens_apparel = 1
store.womens_apparel = 0
store.save

store = Store.create
store.name = "Yaletown"
store.annual_revenue = 430000
store.mens_apparel = 1
store.womens_apparel = 1
store.save

@mens_stores = Store.where(mens_apparel: 1)

@mens_stores.each do |store|
  p "#{store.name} - #{store.annual_revenue}"
end

@womens_store = Store.where(["womens_apparel = ? and annual_revenue < ?",'t' , 1000000])

@womens_store.each do |store|
  p "#{store.name} - #{store.annual_revenue}"
end