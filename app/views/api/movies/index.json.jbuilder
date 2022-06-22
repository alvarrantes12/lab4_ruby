json.array! @movies do |movie|
	json.id movie.id
	json.name movie.name
	json.publicationYear movie.publicationYear
	json.idDirector "#{movie.director.id}"
	json.nameDirector "#{movie.director.name}"
	json.lastname "#{movie.director.lastname}"
end
