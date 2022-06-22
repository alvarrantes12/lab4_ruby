json.movie do
    json.id @movie.id
    json.name @movie.name
    json.year @movie.year
    json.director_id @movie.director.id
    json.first_name @movie.director.first_name
end
