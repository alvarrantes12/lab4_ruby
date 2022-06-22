json.movie do
    json.id @movie.id 
    json.name @movie.name
    json.director @movie.director.first_name
end
