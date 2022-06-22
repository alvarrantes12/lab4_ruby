json.movie do
	json.id @movie.id
	json.name @movie.name
    json.pubYear @movie.pubYear
    json.idDir "#{@movie.director.id}"
    json.nameDir "#{@movie.director.name}"
    json.lastName "#{@movie.director.lastName}"
end