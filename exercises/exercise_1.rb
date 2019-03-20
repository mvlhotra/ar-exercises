require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
# Employee.create('name': "Lit and Ace", annual_revenue: 300000, mens_apparel:1, womens_apparel:1)

Store.destroy_all

store = Store.create
store.name = "Burnaby"
store.annual_revenue = 300000
store.mens_apparel = 1
store.womens_apparel = 1
store.save

store = Store.create
store.name = "Richmond"
store.annual_revenue = 1260000
store.mens_apparel = 0
store.womens_apparel = 1
store.save

store = Store.create
store.name = "Gastown "
store.annual_revenue = 190000
store.mens_apparel = 1
store.womens_apparel = 0
store.save
