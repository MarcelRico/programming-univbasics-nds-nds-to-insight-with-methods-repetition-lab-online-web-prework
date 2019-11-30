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
  arr = []
  source.length.times do |idx|
    arr << source[idx][:name]
  end
  arr
end

def total_gross(source)
  directors_names = list_of_directors(source)
  total_gross = 0
  source.length.times do |idx|
    total_gross += directors_totals(source[idx])[directors_names[:name]]
  end
  puts total_gross
end


