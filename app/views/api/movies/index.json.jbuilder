json.array! @movies do |movie|
json.id movie.id
json.name movie.name
json.year movie.year
json.director "#{movie.director.name} #{movie.director.last_name}"

end