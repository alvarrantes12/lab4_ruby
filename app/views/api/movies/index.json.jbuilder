json.array! @movies do |movie|

    json.id movie.id
    json.name movie.name
    json.year movie.year
    json.first_name movie.director.first_name
    json.last_name movie.director.last_name

end