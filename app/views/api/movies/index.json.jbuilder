json.array! @movies do |movie|
  json.id movie.id
  json.name movie.name
  json.year movie.year
  json.director_name movie.movie_director.name 
end
