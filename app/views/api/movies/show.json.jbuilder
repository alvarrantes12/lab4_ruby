json.movie do
    json.id @movie.id
    json.name @movie.name
    json.publication_year @movie.publication_year
    json.director_id @movie.director.id
    json.director_first_name @movie.director.first_name

end
