$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
director_gross = 0
movie_index = 0
  while movie_index < director_data[:movies].length do
    director_gross += director_data[:movies][movie_index][:worldwide_gross]
    movie_index += 1
  end
return director_gross
end



# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
dir_index = 0  
result = {} 
  while dir_index < nds.length do 
    total = 0 
    movie_index = 0 
    while movie_index < nds[dir_index][:movies].length do 
      total += gross_for_director(director_data)
      movie_index += 1
    end 
   result[nds[dir_index][:name]] = total 
   dir_index += 1 
  end 
 return result
end
