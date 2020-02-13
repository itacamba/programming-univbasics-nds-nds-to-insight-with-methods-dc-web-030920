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
