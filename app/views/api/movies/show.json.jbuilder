json.movie do
    json.id @movie.id
    json.name @movie.name
    json.year @movie.year
    json.director do
        json.id @movie.director.id
        json.first_name @movie.director.first_name
        json.last_name @movie.director.last_name
    end
end
