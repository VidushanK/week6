require_relative '../setup'
require_relative './exercise_1'

# 1. Load the first store (with `id = 1`) from the database and assign it to an instance variable `@store1`.
# 2. Load the second store from the database and assign it to `@store2`.
# 3. Update the first store (`@store1`) instance in the database. (Change its name or something.)


puts "Exercise 2"
puts "----------"

@store1 = Store.find(1)
puts "this is store 1 : #{@store1.name}"

@store2 = Store.find(2)

@store1.name = "test132313213123123"
@store1.save

# Your code goes here ...
