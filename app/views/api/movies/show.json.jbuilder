json.movie do
	json.id @movie.id
	json.name @movie.name
	json.idDirector "#{@movie.director.name}"
	json.nameDirector "#{@movie.director.name}"
	json.lastname "#{@movie.director.lastname}"
end