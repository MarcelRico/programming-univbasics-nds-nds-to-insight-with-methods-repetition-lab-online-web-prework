$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

def list_of_directors(source)
  
  
end

def total_gross
  directors_total_profits = 0
  
  source.length.times do |outer_idx|
    movies = source[outer_idx][:movies]
    movies.length.times do |innner_idx|
      overall_total += movies[innner_idx][]
    end
  end
end


