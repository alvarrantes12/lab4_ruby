json.movie do
  json.id @movie.id
  json.name @movie.name
  json.year_of_publication @movie.year_of_publication
  json.director do
    json.id @movie.director.id
    json.name @movie.director.name
    json.last_name @movie.director.last_name
  end
end