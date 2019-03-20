require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

total_rev = Store.pluck(:annual_revenue)
greater_than_million = Store.where("annual_revenue > ?", 1000000).count
puts "Total Revenue = #{total_rev.sum}"
puts "Avg Revenue =  #{total_rev.sum / total_rev.length}"
puts "Stores w/ >1M Revenue =  #{greater_than_million}"