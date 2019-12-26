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
outer = 0  
result = {} 
  while outer < nds.length do 
    total = 0 
    inner = 0 
   while inner < nds[outer][:movies].length do 
      total += nds[outer][:movies][inner][:worldwide_gross]
      inner += 1
   end 
    # add key:value pair to the hash as name: total
    result[nds[outer][:name]] = total 
    outer += 1 
  end 
  return hash 
end
