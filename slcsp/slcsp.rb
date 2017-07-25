require 'csv'
require 'pry'

puts 'Please enter data name'
filename = gets.chomp

zipcode = CSV.read("#{filename}.csv")

binding.pry
