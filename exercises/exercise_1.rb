# 1. Use Active Record's `create` class method multiple times to create 3 stores in the database:
#   * Burnaby (annual_revenue of 300000, carries men's and women's apparel)
#   * Richmond (annual_revenue of 1260000 carries women's apparel only)
#   * Gastown (annual_revenue of 190000 carries men's apparel only)
# 2. Output (`puts`) the number of the stores using ActiveRecord's `count` method, to ensure that there are three stores in the database.

#area / annual_revenue / carries

require_relative '../setup'

puts "Exercise 1"
puts "----------"
ActiveRecord::Schema.define do
# drop_table :burnaby if ActiveRecord::Base.connection.data_source_exists? :burnaby
# drop_table :richmond if ActiveRecord::Base.connection.data_source_exists? :richmond
# drop_table :gastown if ActiveRecord::Base.connection.data_source_exists? :gastown
  #
  # create_table :burnaby do |t|
  #   t.integer :annual_revenue, default: 300000
  #   t.boolean :mens_apparel, default: true
  #   t.boolean :womens_apparel, default: true
  # end
  #
  # create_table :richmond do |t|
  #   t.integer :annual_revenue, default: 1260000
  #   t.boolean :mens_apparel, default: false
  #   t.boolean :womens_apparel, default: true
  # end
  #
  # create_table :gastown do |t|
  #   t.integer :annual_revenue, default: 190000
  #   t.boolean :mens_apparel, default: true
  #   t.boolean :womens_apparel, default: false
  # end
  burnaby = Store.new
  burnaby.name = "Burnaby"
  burnaby.annual_revenue = 300000
  burnaby.mens_apparel = true
  burnaby.womens_apparel = true
  burnaby.save

  richmond = Store.new
  richmond.name = "Richmond"
  richmond.annual_revenue = 1260000
  richmond.mens_apparel = false
  richmond.womens_apparel = true
  richmond.save

  gastown = Store.new
  gastown.name = "Gastown"
  gastown.annual_revenue = 190000
  gastown.mens_apparel = true
  gastown.womens_apparel = false
  gastown.save
end

puts "Total amount of stores created : #{Store.all.count}"
# Your code goes below here ...
