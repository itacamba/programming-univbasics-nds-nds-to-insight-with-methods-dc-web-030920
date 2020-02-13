$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  movies_index = 0
  director_gross = 0
  movies_array = director_data[:movies]
  while movies_index < movies_array.length do
    director_gross += movies_array[movies_index][:worldwide_gross]
    movies_index += 1
  end
  p director_gross
end
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  directors_index = 0
  while directors_index < nds.length do
    director_name = nds[directors_index][:name]
    result[director_name] = gross_for_director(directors_database[directors_index])
    directors_index += 1
  end
  p result
end
pp directors_database



# 3 arrays and a Hash

row_index = 0
while row_index < vm.length do
  column_index = 0
  puts "Row #{row_index} has: "
  while column_index < vm[row_index].length do
    element_index = 0
    puts "\tColum #{column_index} has: "
    while element_index < vm[row_index][column_index].length do
      puts "\t\tElement#{element_index} (#{row_index},#{column_index},#{element_index}) price is: #{vm[row_index][column_index][element_index][:price]}"
      element_index += 1
    end
    column_index += 1
  end
  row_index += 1
end
