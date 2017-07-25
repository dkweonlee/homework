require 'csv'
require 'pry'

puts 'Please enter data name'
filename = gets.chomp
zipcode = CSV.read("#{filename}.csv")
i = 1
list_zip = []
while i < zipcode.length
  list_zip << zipcode[i][0]
  i+=1
end

binding.pry
